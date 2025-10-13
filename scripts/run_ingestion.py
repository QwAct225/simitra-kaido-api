import os, re, csv

base_dir = os.path.dirname(os.path.abspath(__file__))
raw_dir = os.path.join(base_dir, "..", "data", "raw")
if not os.path.exists(raw_dir):
    raise FileNotFoundError(f"Direktori '{raw_dir}' tidak ditemukan. Pastikan file SQL ada di sana.")

sql_candidates = [f for f in os.listdir(raw_dir) if f.endswith(".sql")]
if not sql_candidates:
    raise FileNotFoundError(f"Tidak ada file .sql ditemukan di direktori '{raw_dir}'.")

sql_file = os.path.join(raw_dir, sql_candidates[0])

target_table = "mitras"
file_name = "raw_mitra"
data_dir = os.path.abspath(os.path.join(base_dir, "..", "data", "raw"))
os.makedirs(data_dir, exist_ok=True)
csv_file = os.path.join(data_dir, f"{file_name}.csv")

insert_pattern = re.compile(
    rf"INSERT INTO `{target_table}` .*?VALUES\s*(.*?);",
    re.DOTALL
)

with open(sql_file, "r", encoding="utf-8") as f:
    content = f.read()

matches = insert_pattern.findall(content)
rows = []

for match in matches:
    tuples = re.findall(r"\((.*?)\)", match, re.DOTALL)
    for t in tuples:
        values = [v.strip().strip("'") for v in re.split(r",(?![^()]*\))", t)]
        rows.append(values)

headers = [
    "id", "sobat_id", "name", "user_id",
    "email", "pendidikan", "jenis_kelamin",
    "tanggal_lahir", "photo", "created_at", "updated_at"
]

with open(csv_file, "w", newline="", encoding="utf-8") as f:
    writer = csv.writer(f)
    writer.writerow(headers)
    writer.writerows(rows)

print(f"✅ Data dari tabel '{target_table}' berhasil diekspor ke '{csv_file}' ({len(rows)} baris).")
