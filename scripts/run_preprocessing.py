import pandas as pd
import os
import re
import psycopg2
from psycopg2 import sql
from dotenv import load_dotenv, find_dotenv
import platform

base_dir = os.path.dirname(os.path.abspath(__file__))
input_path = os.path.join(base_dir, "../data/raw/raw_mitra.csv")
output_csv_path = os.path.join(base_dir, "../data/raw/cleaned_mitra.csv")
output_json_path = os.path.join(base_dir, "../data/raw/cleaned_mitra.json")
load_dotenv(find_dotenv(), override=True)

if platform.system().lower().startswith("windows"):
    detected_host = "host.docker.internal"
else:
    detected_host = "127.0.0.1"

os.environ["DB_HOST"] = os.getenv("DB_HOST", detected_host)
print(f"🌐 Environment terdeteksi: {platform.system()} → menggunakan host: {os.environ['DB_HOST']}")

df = pd.read_csv(input_path, dtype=str).fillna("")

df = df.replace(["NULL", "null", "None", "none", "-", " "], "")

required_columns = ["id", "sobat_id", "name", "email", "jenis_kelamin"]

mask_incomplete = df[required_columns].apply(lambda x: x.eq("").any(), axis=1)
incomplete_rows = df[mask_incomplete]
df_cleaned = df[~mask_incomplete].reset_index(drop=True)

print("\n🧹 Membersihkan karakter spesial pada kolom 'name':")
pattern = re.compile(r"[\\'\"`´]")
for idx, row in df_cleaned.iterrows():
    original_name = row["name"]
    cleaned_name = pattern.sub("", original_name).strip()
    cleaned_name = re.sub(r"\s+", " ", cleaned_name)
    if cleaned_name != original_name:
        print(f"- ID {row['id']}: '{original_name}' → '{cleaned_name}'")
        df_cleaned.at[idx, "name"] = cleaned_name

df_cleaned.to_csv(output_csv_path, index=False, encoding="utf-8")

df_cleaned.to_json(output_json_path, orient="records", indent=4, force_ascii=False)

print("\n🚫 Baris yang dihapus karena data tidak lengkap:")
if incomplete_rows.empty:
    print("Tidak ada baris yang dihapus 🎉")
else:
    for _, row in incomplete_rows.iterrows():
        missing_cols = [col for col in required_columns if row[col] == ""]
        print(f"- ID {row['id']}: {row.get('name', '(nama kosong)')} | Kolom kosong: {', '.join(missing_cols)}")

print(f"\n💾 File cleaned disimpan:")
print(f"   📊 CSV  → {os.path.abspath(output_csv_path)}")
print(f"   🧾 JSON → {os.path.abspath(output_json_path)}")
print(f"📈 Jumlah data bersih: {len(df_cleaned)} dari {len(df)} total data.")

DB_CONFIG = {
    "dbname": os.getenv("DB_NAME"),
    "user": os.getenv("DB_USER"),
    "password": os.getenv("DB_PASS"),
    "host": os.getenv("DB_HOST"),
    "port": os.getenv("DB_PORT")
}

try:
    conn_check = psycopg2.connect(
        dbname="postgres",
        user=DB_CONFIG["user"],
        password=DB_CONFIG["password"],
        host=DB_CONFIG["host"],
        port=DB_CONFIG["port"]
    )
    conn_check.autocommit = True
    cur = conn_check.cursor()

    cur.execute("SELECT 1 FROM pg_database WHERE datname = %s;", (DB_CONFIG["dbname"],))
    exists = cur.fetchone()

    if not exists:
        cur.execute(sql.SQL("CREATE DATABASE {}").format(sql.Identifier(DB_CONFIG["dbname"])))
        print(f"🆕 Database '{DB_CONFIG['dbname']}' berhasil dibuat otomatis.")
    else:
        print(f"✅ Database '{DB_CONFIG['dbname']}' sudah tersedia.")

    cur.close()
    conn_check.close()

except Exception as e:
    print("❌ Gagal membuat / memeriksa database:", e)

try:
    conn = psycopg2.connect(**DB_CONFIG)
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
            updated_at TIMESTAMP
        );
    """)
    conn.commit()

    cursor.execute("TRUNCATE TABLE mitra_cleaned;")

    for _, row in df_cleaned.iterrows():
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

    conn.commit()
    print(f"📤 {len(df_cleaned)} baris data bersih berhasil dikirim ke PostgreSQL!")

except Exception as e:
    print("❌ Terjadi kesalahan saat menyimpan ke PostgreSQL:", e)

finally:
    if 'cursor' in locals():
        cursor.close()
    if 'conn' in locals():
        conn.close()
        print("🔒 Koneksi PostgreSQL ditutup.")