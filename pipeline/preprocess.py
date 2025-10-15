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

    def categorize_bagian(name, code=None):
        name_lower = name.lower()
        code_lower = code.lower() if code else ""
        
        search_text = name_lower + " " + code_lower
        
        rumah_tangga_keywords = [
            "rumah tangga", "penduduk", "konsumsi", "keluarga",
            "sosial ekonomi", "susenas", "seruti",
            "ketenagakerjaan", "tenaga kerja", "literasi keuangan", 
            "inklusi keuangan", "nasional literasi", "ekonomi rumah tangga",
            "lnprt", "lembaga non profit rumah tangga", "sak", "snlik"
        ]
        
        pertanian_keywords = [
            "ubinan", "hortikultura", "peternakan", "kehutanan", 
            "pangan", "ternak", "pemotongan ternak", "sph", "spk", "spp", "lptb"
        ]
        
        perusahaan_keywords = [
            "perusahaan", "industri", "usaha", "umkm",
            "perdagangan", "penjualan", "makanan minuman",
            "air bersih", "captive power", "non migas",
            "pergudangan", "angkutan", "mikro", "kecil",
            "kegiatan usaha", "pola usaha", "direktori",
            "lembaga keuangan", "volume penjualan", "ibs", "spab", 
            "sktu", "vpbd", "vpek", "vrest", "spunp", "svpeb", 
            "scp", "imk", "snm", "slk"
        ]
        
        pariwisata_keywords = [
            "wisata", "hotel", "penghunian kamar", "daya tarik wisata", 
            "akomodasi", "penyedia jasa akomodasi", "objek daya tarik",
            "vhts", "vdtw", "vhtl"
        ]
        
        infrastruktur_keywords = [
            "konstruksi", "pembangunan", "infrastruktur", "konstruksi"
        ]
        
        harga_keywords = [
            "harga konsumen", "harga produsen", "harga perdagangan besar",
            "kemahalan konstruksi", "shk", "shp", "shpb", "shkk"
        ]
        
        area_keywords = [
            "kerangka sampel area", "ksa", "potensi desa", "podes"
        ]
        
        produksi_keywords = [
            "neraca produksi", "sktnp", "updating direktori", "ud"
        ]

        if any(k in search_text for k in rumah_tangga_keywords):
            return "Rumah Tangga"
        
        if any(k in search_text for k in pertanian_keywords):
            return "Pertanian"
        
        if any(k in search_text for k in perusahaan_keywords):
            return "Perusahaan"
        
        if any(k in search_text for k in pariwisata_keywords):
            return "Pariwisata"
        
        if any(k in search_text for k in infrastruktur_keywords):
            return "Infrastruktur"
        
        if any(k in search_text for k in harga_keywords):
            return "Keuangan"
        
        if any(k in search_text for k in area_keywords):
            return "Area/Regional"
        
        if any(k in search_text for k in produksi_keywords):
            return "Produksi"
        
        if "survey" in search_text or "survei" in search_text:
            if "test" in search_text or "dev" in search_text or "stod" in search_text:
                return "Testing/Development"
            return "Lainnya"
        
        return "Lainnya"

    df_s["type"] = df_s.apply(lambda row: categorize_bagian(row["name"], row["code"]), axis=1)
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
            type VARCHAR(100),
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
            INSERT INTO survey_enriched (name, code, type, created_at, updated_at)
            VALUES (%s,%s,%s,%s,%s);
        """, (
            r["name"], r["code"], r["type"], r["created_at"], r["updated_at"]
        ))

    conn.commit()
    cur.close()
    conn.close()
    print(f"📤 Uploaded {len(df_clean_m)} mitra & {len(df_s)} survey rows (fresh rebuild).")
