import os
import re
import csv

base_dir = os.path.dirname(os.path.abspath(__file__))
raw_dir = os.path.join(base_dir, "..", "data", "raw")
os.makedirs(raw_dir, exist_ok=True)

sql_candidates = [f for f in os.listdir(raw_dir) if f.endswith(".sql")]
if not sql_candidates:
    raise FileNotFoundError(f"Tidak ada file .sql ditemukan di direktori '{raw_dir}'.")
sql_file = os.path.join(raw_dir, sql_candidates[0])

with open(sql_file, "r", encoding="utf-8") as f:
    content = f.read()

tables = {
    "mitras": [
        "id", "sobat_id", "name", "user_id", "email", "pendidikan",
        "jenis_kelamin", "tanggal_lahir", "photo", "created_at", "updated_at"
    ],
    "master_surveys": [
        "id", "name", "code", "created_at", "updated_at"
    ]
}

def extract_inserts(table_name, content):
    pattern = re.compile(
        rf"INSERT INTO `{table_name}` .*?VALUES\s*(.*?);",
        re.DOTALL
    )
    matches = pattern.findall(content)
    rows = []

    for match in matches:
        tuples = re.findall(r"\((.*?)\)", match, re.DOTALL)
        for t in tuples:
            values = [v.strip().strip("'") for v in re.split(r",(?![^()]*\))", t)]
            rows.append(values)

    return rows

for table_name, headers in tables.items():
    rows = extract_inserts(table_name, content)
    if not rows:
        print(f"⚠️  Tidak ditemukan data INSERT untuk tabel '{table_name}'.")
        continue

    csv_file = os.path.join(raw_dir, f"raw_{table_name.replace('master_', '')}.csv")
    with open(csv_file, "w", newline="", encoding="utf-8") as f:
        writer = csv.writer(f)
        writer.writerow(headers)
        writer.writerows(rows)

    print(f"✅ Data dari tabel '{table_name}' berhasil diekspor ke '{csv_file}' ({len(rows)} baris).")

print("\n🎯 Proses ingest selesai untuk semua tabel yang ditemukan.")
