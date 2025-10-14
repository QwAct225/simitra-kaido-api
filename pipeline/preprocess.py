import os, re, platform
import pandas as pd
import psycopg2
from dotenv import load_dotenv, find_dotenv

def run_preprocess(base_dir: str, mode: str = "overwrite"):
    load_dotenv(find_dotenv(), override=True)

    raw_dir = os.path.join(base_dir, "data", "raw")
    processed_dir = os.path.join(base_dir, "data", "processed")
    os.makedirs(processed_dir, exist_ok=True)

    mitra_in = os.path.join(raw_dir, "raw_mitras.csv")
    survey_in = os.path.join(raw_dir, "raw_surveys.csv")
    mitra_out_csv = os.path.join(processed_dir, "cleaned_mitras.csv")
    mitra_out_json = os.path.join(processed_dir, "cleaned_mitras.json")
    survey_out_csv = os.path.join(processed_dir, "cleaned_surveys.csv")
    survey_out_json = os.path.join(processed_dir, "cleaned_surveys.json")

    if os.environ.get("AIRFLOW_HOME"):
        detected_host = "postgres"
    elif platform.system().lower().startswith("windows"):
        detected_host = "host.docker.internal"
    else:
        detected_host = "127.0.0.1"

    db_host = os.getenv("DB_HOST", detected_host)

    DB_CONFIG = {
        "dbname": os.getenv("DB_NAME"),
        "user": os.getenv("DB_USER"),
        "password": os.getenv("DB_PASS"),
        "host": db_host,
        "port": os.getenv("DB_PORT"),
    }

    df_m = pd.read_csv(mitra_in, dtype=str).fillna("")
    df_m = df_m.replace(["NULL", "null", "None", "none", "-", " "], "")
    req = ["id", "sobat_id", "name", "email", "jenis_kelamin"]
    df_clean_m = df_m[~df_m[req].apply(lambda x: x.eq("").any(), axis=1)].reset_index(drop=True)
    pat = re.compile(r"[\\'\"`´]")
    df_clean_m["name"] = df_clean_m["name"].apply(lambda n: re.sub(pat, "", str(n)).strip())

    df_clean_m.to_csv(mitra_out_csv, index=False)
    df_clean_m.to_json(mitra_out_json, orient="records", indent=4, force_ascii=False)

    df_s = pd.read_csv(survey_in, dtype=str).fillna("")
    df_s["name"] = df_s["name"].apply(lambda x: re.sub(r"\s+", " ", str(x).strip()))

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

        if any(k in name_lower for k in perusahaan_keywords) or code_upper in perusahaan_codes:
            return "Perusahaan"
        if any(k in name_lower for k in rumah_tangga_keywords) or code_upper in rumah_tangga_codes:
            return "Rumah Tangga"
        return "Rumah Tangga"

    df_s["bidang"] = df_s.apply(lambda x: categorize_bagian(x["name"], x["code"]), axis=1)
    df_s.to_csv(survey_out_csv, index=False)
    df_s.to_json(survey_out_json, orient="records", indent=4, force_ascii=False)

    conn = psycopg2.connect(**DB_CONFIG)
    cur = conn.cursor()

    if mode == "overwrite":
        print("🧹 Mode overwrite aktif — drop table sebelum rebuild...")
        cur.execute("DROP TABLE IF EXISTS mitra_cleaned CASCADE;")
        cur.execute("DROP TABLE IF EXISTS survey_enriched CASCADE;")
        conn.commit()

    cur.execute("""
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
    cur.execute("""
        CREATE TABLE IF NOT EXISTS survey_enriched (
            id SERIAL PRIMARY KEY,
            name VARCHAR(255),
            code VARCHAR(100),
            bidang VARCHAR(50),
            created_at TIMESTAMP,
            updated_at TIMESTAMP
        );
    """)
    conn.commit()

    for _, r in df_clean_m.iterrows():
        cur.execute("""
            INSERT INTO mitra_cleaned (
                sobat_id, name, user_id, email, pendidikan,
                jenis_kelamin, tanggal_lahir, photo, created_at, updated_at
            ) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s);
        """, (
            r["sobat_id"], r["name"], r["user_id"], r["email"], r["pendidikan"],
            r["jenis_kelamin"], r["tanggal_lahir"], r["photo"],
            r["created_at"], r["updated_at"]
        ))

    for _, r in df_s.iterrows():
        cur.execute("""
            INSERT INTO survey_enriched (name, code, bidang, created_at, updated_at)
            VALUES (%s,%s,%s,%s,%s);
        """, (
            r["name"], r["code"], r["bidang"], r["created_at"], r["updated_at"]
        ))

    conn.commit()
    cur.close()
    conn.close()
    print(f"📤 Uploaded {len(df_clean_m)} mitra & {len(df_s)} survey rows (fresh rebuild).")
