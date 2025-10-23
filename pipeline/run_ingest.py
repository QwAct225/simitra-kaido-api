import os, re, csv

def run_ingest(base_dir: str):
    raw_dir = os.path.join(base_dir, "data", "raw")
    os.makedirs(raw_dir, exist_ok=True)

    sql_candidates = [f for f in os.listdir(raw_dir) if f.endswith(".sql")]
    if not sql_candidates:
        raise FileNotFoundError(f"Tidak ada file .sql di {raw_dir}")
    sql_file = os.path.join(raw_dir, sql_candidates[0])

    with open(sql_file, "r", encoding="utf-8") as f:
        content = f.read()

    def extract(table, headers, out_name):
        pattern = re.compile(rf"INSERT INTO `{table}` .*?VALUES\s*(.*?);", re.DOTALL)
        matches = pattern.findall(content)
        rows = []
        for match in matches:
            tuples = re.findall(r"\((.*?)\)", match, re.DOTALL)
            for t in tuples:
                vals = [v.strip().strip("'") for v in re.split(r",(?![^()]*\))", t)]
                rows.append(vals)

        out_csv = os.path.join(raw_dir, out_name)
        with open(out_csv, "w", newline="", encoding="utf-8") as f:
            w = csv.writer(f)
            w.writerow(headers)
            w.writerows(rows)

        return out_csv, len(rows)

    mitra_headers = [
        "id","sobat_id","name","user_id","email","pendidikan",
        "jenis_kelamin","tanggal_lahir","photo","created_at","updated_at"
    ]
    master_survey_headers = ["id","name","code","created_at","updated_at"]
    survey_headers = [
        "id","master_survey_id","triwulan","year","payment_month","payment_id",
        "team_id","rate","file","is_scored","is_synced","status","created_at","updated_at"
    ]
    transaction_headers = [
        "id","mitra_id","survey_id","target","rate","created_at","updated_at"
    ]
    nilai_headers = [
        "transaction_id","aspek1","aspek2","aspek3","rerata","created_at","updated_at"
    ]

    mitra_csv, n_mitra = extract("mitras", mitra_headers, "raw_mitras.csv")
    master_csv, n_master = extract("master_surveys", master_survey_headers, "raw_master_surveys.csv")
    survey_csv, n_survey = extract("surveys", survey_headers, "raw_surveys.csv")
    trans_csv, n_trans = extract("transactions", transaction_headers, "raw_transactions.csv")
    nilai_csv, n_nilai = extract("nilai1s", nilai_headers, "raw_nilai1s.csv")

    print(f"✅ Ingested {n_mitra} mitra, {n_master} master surveys, {n_survey} surveys, {n_trans} transactions, {n_nilai} nilai1s.")

    return {
        "mitra_csv": mitra_csv,
        "master_csv": master_csv,
        "survey_csv": survey_csv,
        "transaction_csv": trans_csv,
        "nilai_csv": nilai_csv
    }
