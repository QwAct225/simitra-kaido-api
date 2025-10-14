import os
import re
import platform
import pandas as pd
import psycopg2
from psycopg2 import sql
from dotenv import load_dotenv, find_dotenv
from datetime import datetime

load_dotenv(find_dotenv(), override=True)

base_dir = os.path.dirname(os.path.abspath(__file__))
data_raw_dir = os.path.abspath(os.path.join(base_dir, "../data/raw"))

mitra_input_path = os.path.join(data_raw_dir, "raw_mitras.csv")
survey_input_path = os.path.join(data_raw_dir, "raw_surveys.csv")

mitra_output_csv = os.path.join(data_raw_dir, "cleaned_mitras.csv")
mitra_output_json = os.path.join(data_raw_dir, "cleaned_mitras.json")

survey_output_csv = os.path.join(data_raw_dir, "cleaned_surveys.csv")
survey_output_json = os.path.join(data_raw_dir, "cleaned_surveys.json")

if platform.system().lower().startswith("windows"):
    detected_host = "host.docker.internal"
else:
    detected_host = "127.0.0.1"

os.environ["DB_HOST"] = os.getenv("DB_HOST", detected_host)
print(f"🌐 Environment terdeteksi: {platform.system()} → menggunakan host: {os.environ['DB_HOST']}")

DB_CONFIG = {
    "dbname": os.getenv("DB_NAME"),
    "user": os.getenv("DB_USER"),
    "password": os.getenv("DB_PASS"),
    "host": os.getenv("DB_HOST"),
    "port": os.getenv("DB_PORT"),
}

def connect_postgres(dbname=None):
    target_db = dbname or DB_CONFIG["dbname"]
    return psycopg2.connect(
        dbname=target_db,
        user=DB_CONFIG["user"],
        password=DB_CONFIG["password"],
        host=DB_CONFIG["host"],
        port=DB_CONFIG["port"]
    )

df_mitra = pd.read_csv(mitra_input_path, dtype=str).fillna("")
df_mitra = df_mitra.replace(["NULL", "null", "None", "none", "-", " "], "")

required_columns = ["id", "sobat_id", "name", "email", "jenis_kelamin"]
mask_incomplete = df_mitra[required_columns].apply(lambda x: x.eq("").any(), axis=1)
incomplete_rows = df_mitra[mask_incomplete]
df_cleaned_mitra = df_mitra[~mask_incomplete].reset_index(drop=True)

print("\n🧹 Membersihkan karakter spesial pada kolom 'name' (mitra):")
pattern = re.compile(r"[\\'\"`´]")
for idx, row in df_cleaned_mitra.iterrows():
    original_name = row["name"]
    cleaned_name = pattern.sub("", original_name).strip()
    cleaned_name = re.sub(r"\s+", " ", cleaned_name)
    if cleaned_name != original_name:
        print(f"- ID {row['id']}: '{original_name}' → '{cleaned_name}'")
        df_cleaned_mitra.at[idx, "name"] = cleaned_name

df_cleaned_mitra.to_csv(mitra_output_csv, index=False, encoding="utf-8")
df_cleaned_mitra.to_json(mitra_output_json, orient="records", indent=4, force_ascii=False)

print(f"\n💾 File cleaned mitra disimpan:")
print(f"   📊 CSV  → {mitra_output_csv}")
print(f"   🧾 JSON → {mitra_output_json}")
print(f"📈 Jumlah data bersih: {len(df_cleaned_mitra)} dari {len(df_mitra)} total data.")

print("\n📊 Melakukan enrichment untuk data survey...")
df_survey = pd.read_csv(survey_input_path, dtype=str).fillna("")
df_survey["name"] = df_survey["name"].apply(lambda x: re.sub(r"\s+", " ", str(x).strip()))

def categorize_bagian(name, code):
    name_lower = name.lower()
    code_upper = code.upper()
    
    perusahaan_keywords = [
        "usaha", "industri", "perusahaan", "umkm", "karyawan", "tenaga kerja",
        "konstruksi", "hotel", "perdagangan", "penjualan", "lembaga keuangan",
        "hortikultura", "peternakan", "kehutanan", "makanan minuman",
        "akomodasi", "air bersih", "captive power", "non migas", "penyedia jasa",
        "pergudangan", "angkutan", "triwulanan kegiatan usaha", "mikro", "kecil",
        "produsen"
    ]
    
    rumah_tangga_keywords = [
        "rumah tangga", "penduduk", "konsumsi", "keluarga", "pekerja informal",
        "sosial ekonomi", "susenas", "seruti", "literasi", "ketenagakerjaan",
        "pola usaha", "potensi desa", "kemahalan", "harga konsumen"
    ]
    
    perusahaan_codes = [
        "SHP", "IBS", "SPAB", "VHTS", "VHTL", "VPBD", "VPEK", "VREST", 
        "IMK", "SNM", "SPH", "SPK", "SPP", "SHKK", "SKTU"
    ]
    
    rumah_tangga_codes = [
        "UBINAN", "SUSENAS", "SAK", "SERUTI", "PODES", "SKLNPRT", "SHK"
    ]
    
    if any(keyword in name_lower for keyword in perusahaan_keywords):
        return "Perusahaan"
    elif any(keyword in name_lower for keyword in rumah_tangga_keywords):
        return "Rumah Tangga"
    
    elif code_upper in perusahaan_codes:
        return "Perusahaan"
    elif code_upper in rumah_tangga_codes:
        return "Rumah Tangga"
    
    else:
        return "Rumah Tangga"

df_survey["bidang"] = df_survey.apply(lambda x: categorize_bagian(x["name"], x["code"]), axis=1)

df_survey.to_csv(survey_output_csv, index=False, encoding="utf-8")
df_survey.to_json(survey_output_json, orient="records", indent=4, force_ascii=False)

print(f"✅ File cleaned survey disimpan:")
print(f"   📊 CSV  → {survey_output_csv}")
print(f"   🧾 JSON → {survey_output_json}")
print(f"📈 Jumlah data survey: {len(df_survey)}")

try:
    conn = connect_postgres()
    cursor = conn.cursor()
    print("\n✅ Terhubung ke PostgreSQL")

    cursor.execute("""
        CREATE TABLE IF NOT EXISTS mitra_cleaned (
            id SERIAL PRIMARY KEY,
            sobat_id VARCHAR(100),
            name VARCHAR(255),
            user_id VARCHAR(100),
            email VARCHAR(255),
            pendidikan VARCHAR(100),
            jenis_kelamin VARCHAR(20),
            tanggal_lahir DATE,
            photo TEXT,
            created_at TIMESTAMP,
            updated_at TIMESTAMP,
            processed_at TIMESTAMP DEFAULT NOW()
        );
    """)
    conn.commit()

    cursor.execute("""
        CREATE TABLE IF NOT EXISTS survey_enriched (
            id SERIAL PRIMARY KEY,
            name VARCHAR(255),
            code VARCHAR(100),
            bidang VARCHAR(50),
            created_at TIMESTAMP,
            updated_at TIMESTAMP,
            processed_at TIMESTAMP DEFAULT NOW()
        );
    """)
    conn.commit()

    mode = input("\nPilih mode penyimpanan [O]verwrite / [A]ppend versi baru (default: O): ").strip().lower() or "o"
    if mode.startswith("o"):
        print("🧹 Mode Overwrite dipilih — membersihkan tabel sebelum memasukkan data baru.")
        cursor.execute("TRUNCATE TABLE mitra_cleaned;")
        cursor.execute("TRUNCATE TABLE survey_enriched;")
    else:
        print("🕒 Mode Append dipilih — menambah data sebagai versi baru.")

    for _, row in df_cleaned_mitra.iterrows():
        cursor.execute("""
            INSERT INTO mitra_cleaned (
                sobat_id, name, user_id, email, pendidikan,
                jenis_kelamin, tanggal_lahir, photo, created_at, updated_at
            ) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s);
        """, (
            row["sobat_id"], row["name"], row["user_id"], row["email"],
            row["pendidikan"], row["jenis_kelamin"], row["tanggal_lahir"],
            row["photo"], row["created_at"], row["updated_at"]
        ))

    for _, row in df_survey.iterrows():
        cursor.execute("""
            INSERT INTO survey_enriched (name, code, bidang, created_at, updated_at)
            VALUES (%s,%s,%s,%s,%s);
        """, (
            row["name"], row["code"], row["bidang"], row["created_at"], row["updated_at"]
        ))

    conn.commit()
    print(f"📤 {len(df_cleaned_mitra)} mitra + {len(df_survey)} survey berhasil dikirim ke PostgreSQL!")

except Exception as e:
    print("❌ Terjadi kesalahan saat menyimpan ke PostgreSQL:", e)

finally:
    if 'cursor' in locals():
        cursor.close()
    if 'conn' in locals():
        conn.close()
        print("🔒 Koneksi PostgreSQL ditutup.")
