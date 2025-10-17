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
    master_in = os.path.join(raw_dir, "raw_master_surveys.csv")
    survey_in = os.path.join(raw_dir, "raw_surveys.csv")
    trans_in = os.path.join(raw_dir, "raw_transactions.csv")
    nilai_in = os.path.join(raw_dir, "raw_nilai1s.csv")

    def make_paths(name):
        return (
            os.path.join(processed_dir, f"cleaned_{name}.csv")
        )

    mitra_out_csv = make_paths("mitras")
    master_out_csv = make_paths("master_surveys")
    survey_out_csv = make_paths("surveys")
    trans_out_csv = make_paths("transactions")
    nilai_out_csv= make_paths("nilai1s")

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

    df_m = pd.read_csv(mitra_in, dtype=str)
    df_m = df_m.replace(["NULL", "null", "None", "none", "-", " "], pd.NA)
    pat = re.compile(r"[\\'\"`´]")
    df_m["name"] = df_m["name"].apply(lambda n: re.sub(pat, "", str(n)) if pd.notna(n) else n)

    df_m.to_csv(mitra_out_csv, index=False)

    df_ms = pd.read_csv(master_in, dtype=str).fillna("")
    df_ms["name"] = df_ms["name"].apply(lambda x: re.sub(r"\s+", " ", str(x).strip()))

    def categorize_bagian(name, code=None):
        text = (str(name) + " " + str(code)).lower()
        rumah_tangga = ["rumah tangga", "penduduk", "susenas", "seruti", "lnprt", "sak", "srtn", "podes"]
        perusahaan = ["usaha", "perusahaan", "industri", "umkm", "perdagangan", "imk", "ibs", "spk", "spp", "sph", "spab"]
        if any(k in text for k in rumah_tangga):
            return "Rumah Tangga"
        if any(k in text for k in perusahaan):
            return "Perusahaan"
        return "Lainnya"

    df_ms["type"] = df_ms.apply(lambda r: categorize_bagian(r["name"], r["code"]), axis=1)
    df_ms = df_ms[df_ms["type"].isin(["Rumah Tangga", "Perusahaan"])].reset_index(drop=True)
    df_ms.to_csv(master_out_csv, index=False)

    def clean_df(path):
        df = pd.read_csv(path, dtype=str)
        df = df.replace(["NULL", "null", "None", "none", "-", " "], pd.NA)
        return df.reset_index(drop=True)

    df_s = clean_df(survey_in)
    df_t = clean_df(trans_in)
    df_n = clean_df(nilai_in)

    for df, csv_path in [
        (df_s, survey_out_csv),
        (df_t, trans_out_csv),
        (df_n, nilai_out_csv),
    ]:
        df.to_csv(csv_path, index=False)

    conn = psycopg2.connect(**DB_CONFIG)
    cur = conn.cursor()

    if mode == "overwrite":
        print("🧹 Drop table before rebuild...")
        cur.execute("""
            DROP TABLE IF EXISTS 
                mitra_cleaned, master_surveys_enriched, surveys_cleaned, 
                transactions_cleaned, nilai1s_cleaned CASCADE;
        """)
        conn.commit()

    cur.execute("""
        CREATE TABLE IF NOT EXISTS mitra_cleaned (
            id BIGINT PRIMARY KEY,
            sobat_id BIGINT,
            name VARCHAR(200),
            user_id BIGINT,
            email VARCHAR(200),
            pendidikan VARCHAR(50),
            jenis_kelamin VARCHAR(50),
            tanggal_lahir DATE,
            photo VARCHAR(255),
            created_at TIMESTAMP,
            updated_at TIMESTAMP
        );
    """)
    cur.execute("""
        CREATE TABLE IF NOT EXISTS master_surveys_enriched (
            id BIGINT PRIMARY KEY,
            name VARCHAR(100),
            code VARCHAR(50),
            created_at TIMESTAMP,
            updated_at TIMESTAMP,
            type VARCHAR(100)
        );
    """)
    cur.execute("""
        CREATE TABLE IF NOT EXISTS surveys_cleaned (
            id BIGINT PRIMARY KEY,
            master_survey_id BIGINT,
            triwulan SMALLINT,
            year INT,
            payment_id BIGINT,
            team_id BIGINT,
            rate INT,
            file VARCHAR(255),
            is_scored SMALLINT,
            is_synced SMALLINT,
            status VARCHAR(50),
            created_at TIMESTAMP,
            updated_at TIMESTAMP
        );
    """)
    cur.execute("""
        CREATE TABLE IF NOT EXISTS transactions_cleaned (
            id BIGINT PRIMARY KEY,
            mitra_id BIGINT,
            survey_id BIGINT,
            target INT,
            rate INT,
            created_at TIMESTAMP,
            updated_at TIMESTAMP
        );
    """)
    cur.execute("""
        CREATE TABLE IF NOT EXISTS nilai1s_cleaned (
            transaction_id BIGINT,
            aspek1 SMALLINT,
            aspek2 SMALLINT,
            aspek3 SMALLINT,
            rerata DECIMAL(5,2),
            created_at TIMESTAMP,
            updated_at TIMESTAMP
        );
    """)
    conn.commit()

    def noneify(v):
        if pd.isna(v) or str(v).strip() in ["", " ", "NULL", "null"]:
            return None
        return v

    for _, r in df_m.iterrows():
        cur.execute("""
            INSERT INTO mitra_cleaned (
                id, sobat_id, name, user_id, email, pendidikan,
                jenis_kelamin, tanggal_lahir, photo, created_at, updated_at
            ) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)
            ON CONFLICT (id) DO NOTHING;
        """, (
            noneify(r.get("id")), noneify(r.get("sobat_id")), noneify(r.get("name")),
            noneify(r.get("user_id")), noneify(r.get("email")), noneify(r.get("pendidikan")),
            noneify(r.get("jenis_kelamin")), noneify(r.get("tanggal_lahir")),
            noneify(r.get("photo")), noneify(r.get("created_at")), noneify(r.get("updated_at"))
        ))

    for _, r in df_ms.iterrows():
        cur.execute("""
            INSERT INTO master_surveys_enriched (
                id, name, code, created_at, updated_at, type
            ) VALUES (%s,%s,%s,%s,%s,%s)
            ON CONFLICT (id) DO NOTHING;
        """, (
            noneify(r.get("id")), noneify(r.get("name")), noneify(r.get("code")),
            noneify(r.get("created_at")), noneify(r.get("updated_at")), noneify(r.get("type"))
        ))

    for _, r in df_s.iterrows():
        cur.execute("""
            INSERT INTO surveys_cleaned (
                id, master_survey_id, triwulan, year, payment_id, team_id,
                rate, file, is_scored, is_synced, status, created_at, updated_at
            ) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)
            ON CONFLICT (id) DO NOTHING;
        """, tuple(noneify(v) for v in r.values))

    for _, r in df_t.iterrows():
        cur.execute("""
            INSERT INTO transactions_cleaned (
                id, mitra_id, survey_id, target, rate, created_at, updated_at
            ) VALUES (%s,%s,%s,%s,%s,%s,%s)
            ON CONFLICT (id) DO NOTHING;
        """, tuple(noneify(v) for v in r.values))

    for _, r in df_n.iterrows():
        cur.execute("""
            INSERT INTO nilai1s_cleaned (
                transaction_id, aspek1, aspek2, aspek3, rerata, created_at, updated_at
            ) VALUES (%s,%s,%s,%s,%s,%s,%s);
        """, tuple(noneify(v) for v in r.values))

    conn.commit()
    cur.close()
    conn.close()

    print(f"📤 Uploaded {len(df_m)} mitra, {len(df_ms)} master surveys, {len(df_s)} surveys, {len(df_t)} transactions, {len(df_n)} nilai1s.")
