import os
import numpy as np
import pandas as pd
import psycopg2
from dotenv import load_dotenv, find_dotenv

def fitness_function(weights, df):
    w1, w2 = weights
    df["pso_score"] = w1 * df["fuzzy_score"] + w2 * df["cbf_avg_similarity"]
    df["pso_score"] /= df["pso_score"].max()
    return -np.std(df["pso_score"])

def run_pso(df, n_particles=20, n_iterations=50, inertia=0.5, c1=1.5, c2=1.5):
    np.random.seed(42)
    min_bound, max_bound = 0.0, 1.0

    particles = np.random.uniform(min_bound, max_bound, (n_particles, 2))
    velocities = np.zeros_like(particles)

    personal_best = particles.copy()
    personal_best_scores = np.array([fitness_function(p, df) for p in particles])
    global_best_idx = np.argmax(personal_best_scores)
    global_best = personal_best[global_best_idx].copy()
    global_best_score = personal_best_scores[global_best_idx]

    for i in range(n_iterations):
        for j in range(n_particles):
            r1, r2 = np.random.rand(2)
            velocities[j] = (
                inertia * velocities[j]
                + c1 * r1 * (personal_best[j] - particles[j])
                + c2 * r2 * (global_best - particles[j])
            )

            particles[j] = np.clip(particles[j] + velocities[j], min_bound, max_bound)
            score = fitness_function(particles[j], df)

            if score > personal_best_scores[j]:
                personal_best[j] = particles[j].copy()
                personal_best_scores[j] = score

        best_idx = np.argmax(personal_best_scores)
        if personal_best_scores[best_idx] > global_best_score:
            global_best = personal_best[best_idx].copy()
            global_best_score = personal_best_scores[best_idx]

        print(f"🌀 Iterasi {i+1}/{n_iterations} | Global Best = {global_best_score:.5f} | Weights = {global_best}")

    print(f"\n✅ Bobot optimal ditemukan:")
    print(f"   w_fuzzy = {global_best[0]:.4f}, w_cbf = {global_best[1]:.4f}")
    return global_best

def weight_optimizer(base_dir: str):
    load_dotenv(find_dotenv(), override=True)

    report_dir = os.path.join(base_dir, "data", "reports")
    ranked_path = os.path.join(report_dir, "cbf_ranked_mitra.csv")

    if not os.path.exists(ranked_path):
        raise FileNotFoundError("❌ File cbf_ranked_mitra.csv tidak ditemukan.")

    df = pd.read_csv(ranked_path)
    df = df.dropna(subset=["fuzzy_score", "cbf_avg_similarity"])

    best_weights = run_pso(df)

    df["optimized_score"] = (
        best_weights[0] * df["fuzzy_score"] + best_weights[1] * df["cbf_avg_similarity"]
    )
    df["optimized_score"] /= df["optimized_score"].max()
    df = df.sort_values(by="optimized_score", ascending=False).reset_index(drop=True)

    out_csv = os.path.join(report_dir, "pso_optimized_mitra.csv")
    df.to_csv(out_csv, index=False)

    print(f"📤 Disimpan ke {out_csv}")
    print(f"🏆 Bobot optimal: Fuzzy={best_weights[0]:.4f}, CBF={best_weights[1]:.4f}")

    db_cfg = {
        "dbname": os.getenv("DB_NAME"),
        "user": os.getenv("DB_USER"),
        "password": os.getenv("DB_PASS"),
        "host": os.getenv("DB_HOST", "postgres"),
        "port": os.getenv("DB_PORT", 5432)
    }

    conn = psycopg2.connect(**db_cfg)
    cur = conn.cursor()

    cur.execute("DROP TABLE IF EXISTS pso_optimized_mitra CASCADE;")
    cur.execute("""
        CREATE TABLE IF NOT EXISTS pso_optimized_mitra (
            mitra_ID BIGINT,
            mitra_name VARCHAR(255),
            mitra_gender VARCHAR(50),
            mitra_age FLOAT,
            survey_type VARCHAR(100),
            fuzzy_score FLOAT,
            cbf_avg_similarity FLOAT,
            pso_score FLOAT,
            optimized_score FLOAT
        );
    """)

    for _, r in df.iterrows():
        cur.execute("""
            INSERT INTO pso_optimized_mitra (
                mitra_ID, mitra_name, mitra_gender, mitra_age,
                survey_type, fuzzy_score, cbf_avg_similarity, pso_score, optimized_score
            ) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s);
        """, (
            r.get("mitra_ID"), r.get("mitra_name"), r.get("mitra_gender"),
            r.get("mitra_age"), r.get("survey_type"),
            r.get("fuzzy_score"), r.get("cbf_avg_similarity"),
            r.get("pso_score", None), r.get("optimized_score")
        ))

    conn.commit()
    cur.close()
    conn.close()

    print("✅ Data PSO berhasil diunggah ke PostgreSQL → table: pso_optimized_mitra")
    return df

if __name__ == "__main__":
    BASE_DIR = os.getcwd()
    weight_optimizer(BASE_DIR)
