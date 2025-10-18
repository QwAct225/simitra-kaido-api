import os
import pandas as pd
import psycopg2
from dotenv import load_dotenv, find_dotenv

def run_recommendation_event(base_dir: str):
    load_dotenv(find_dotenv(), override=True)

    processed_dir = os.path.join(base_dir, "data", "processed")
    report_dir = os.path.join(base_dir, "data", "reports")

    df_pso = pd.read_csv(os.path.join(report_dir, "pso_optimized_mitra.csv"))
    df_nilai = pd.read_csv(os.path.join(processed_dir, "cleaned_nilai1s.csv"))
    df_trans = pd.read_csv(os.path.join(processed_dir, "cleaned_transactions.csv"))
    df_survey = pd.read_csv(os.path.join(processed_dir, "cleaned_surveys.csv"))
    df_master = pd.read_csv(os.path.join(processed_dir, "cleaned_master_surveys.csv"))

    df_survey = df_survey.merge(
        df_master[["id", "type"]],
        left_on="master_survey_id",
        right_on="id",
        how="left",
        suffixes=("", "_master")
    ).rename(columns={"type": "survey_type", "id": "survey_id_final"}).drop(columns=["id_master"])

    df_join = df_trans.merge(df_nilai, left_on="id", right_on="transaction_id", how="left")
    df_join = df_join.merge(df_survey[["survey_id_final", "survey_type"]],
                            left_on="survey_id", right_on="survey_id_final", how="left")

    df_join = df_join[["mitra_id", "survey_type", "transaction_id", "rerata"]].dropna()
    df_join["rerata"] = df_join["rerata"].astype(float)

    df_agg = (
        df_join.groupby(["mitra_id", "survey_type"], as_index=False)
        .agg(survey_score=("rerata", "mean"), jumlah_survey=("transaction_id", "count"))
    )

    df_final = df_agg.merge(
        df_pso[["mitra_ID", "mitra_name", "optimized_score"]],
        left_on="mitra_id",
        right_on="mitra_ID",
        how="left"
    ).rename(columns={"optimized_score": "rating_mitra"}).fillna({"rating_mitra": 0})

    df_final["exp_norm"] = df_final["jumlah_survey"] / max(df_final["jumlah_survey"].max(), 1)

    def weighted_score(row):
        if row["survey_type"].lower() == "rumah tangga":
            alpha, beta = 0.8, 0.2
        elif row["survey_type"].lower() == "perusahaan":
            alpha, beta = 0.6, 0.4
        else:
            alpha, beta = 0.7, 0.3
        return (alpha * row["survey_score"]) + (beta * row["exp_norm"] * 5)

    df_final["weighted_score"] = df_final.apply(weighted_score, axis=1)
    df_final["final_rank_score"] = (
        0.5 * df_final["rating_mitra"] + 0.5 * (df_final["weighted_score"] / max(df_final["weighted_score"].max(), 1))
    )

    df_rt = df_final[df_final["survey_type"] == "Rumah Tangga"].reset_index(drop=True)
    df_pr = df_final[df_final["survey_type"] == "Perusahaan"].reset_index(drop=True)

    df_rt = df_rt.drop(columns=["mitra_ID"], errors="ignore")
    df_pr = df_pr.drop(columns=["mitra_ID"], errors="ignore")

    desired_cols = [
        "mitra_id",
        "mitra_name",
        "survey_type",
        "survey_score",
        "jumlah_survey",
        "exp_norm",
        "weighted_score",
        "rating_mitra",
        "final_rank_score"
    ]

    df_rt = df_rt.reindex(columns=[c for c in desired_cols if c in df_rt.columns])
    df_pr = df_pr.reindex(columns=[c for c in desired_cols if c in df_pr.columns])

    DB_CONFIG = {
        "dbname": os.getenv("DB_NAME"),
        "user": os.getenv("DB_USER"),
        "password": os.getenv("DB_PASS"),
        "host": os.getenv("DB_HOST", "postgres"),
        "port": os.getenv("DB_PORT", "5432")
    }

    conn = psycopg2.connect(**DB_CONFIG)
    cur = conn.cursor()

    for table in ["recommendation_rumah_tangga", "recommendation_perusahaan"]:
        cur.execute(f"""
            CREATE TABLE IF NOT EXISTS {table} (
                mitra_id BIGINT,
                mitra_name VARCHAR(255),
                survey_type VARCHAR(100),
                survey_score FLOAT,
                jumlah_survey INT,
                exp_norm FLOAT,
                weighted_score FLOAT,
                rating_mitra FLOAT,
                final_rank_score FLOAT
            );
        """)

    conn.commit()
    cur.execute("TRUNCATE TABLE recommendation_rumah_tangga, recommendation_perusahaan;")

    def insert_df(df, table_name):
        if len(df) == 0:
            print(f"⚠️ Tidak ada data untuk {table_name}.")
            return
        cols = ",".join(df.columns)
        placeholders = ",".join(["%s"] * len(df.columns))
        query = f"INSERT INTO {table_name} ({cols}) VALUES ({placeholders});"
        for _, r in df.iterrows():
            cur.execute(query, tuple(r.values))

    insert_df(df_rt, "recommendation_rumah_tangga")
    insert_df(df_pr, "recommendation_perusahaan")

    conn.commit()
    cur.close()
    conn.close()

    print("✅ Data rekomendasi berhasil disimpan ke PostgreSQL.")
    return {"rumah_tangga": len(df_rt), "perusahaan": len(df_pr)}


if __name__ == "__main__":
    BASE_DIR = os.getcwd()
    run_recommendation_event(BASE_DIR)
