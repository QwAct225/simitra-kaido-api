# 🧠 Machine Learning Backend Service (Mitra Ranking & Survey Aggregator)

Backend ML ini bertugas untuk mengelola, memproses, dan menghitung hasil pemeringkatan mitra serta performa survei secara otomatis.
Sistem dirancang dengan arsitektur terpisah antara profil mitra (ML pipeline) dan hasil survei (aggregator pipeline) agar proses lebih modular, efisien, dan mudah di-maintain.

## 🧱 Struktur Folder

    simitra-kaido-api/
    ├── airflow/
    │   ├── dags/
    │   │   ├── etl_mitra_survey.py
    │   │   └── etl_recommendation_event.py
    │   │
    │   ├── operators/
    │   │   ├── featiure_engineering_operator.py
    │   │   ├── ingest_operator.py
    │   │   ├── preprocess_operator.py
    │   │   ├── ranking_mitra_operator.py
    │   │   ├── recommendation_event_operator.py
    │   │   └── weight_optimizer_operator.py
    │   │
    │   └── requirements.txt
    │
    ├── data/
    │   └── raw/
    │       ├── raw_mitra.csv
    │       ├── cleaned_mitra.csv
    │       └── cleaned_mitra.json
    │
    ├── api/
    │   ├── routers/
    │   │   ├── __init__.py
    │   │   ├── mitra_router.py
    │   │   └── recommendation_router.py
    │   │
    │   ├── services/
    │   │   ├── __init__.py
    │   │   └── database_service.py
    │   │
    │   ├── Dockerfile
    │   ├── main.py
    │   └── requirements.txt
    │
    ├── data/
    │   └── raw/
    │       ├── raw_mitra.csv
    │       ├── cleaned_mitra.csv
    │       └── cleaned_mitra.json
    │
    ├── Pipeline/
    │   ├── __init__.py
    │   ├── run_feature_engineering.py
    │   ├── run_ingest.py
    │   ├── run_preprocess.py
    │   ├── run_ranking_mitra.py
    │   ├── run_recommendation_event.py
    │   └── run_weight_optimizer.py
    │
    ├── docker-compose.yml
    ├── .gitignore
    ├── .env.example
    ├── requirements.txt
    └── README.md

## 🚀 Quick Start

1. **Clone repository ini**

   ```bash
   git clone https://github.com/namamu/simitra-kaido-api.git
   cd simitra-kaido-api
   ```

2. **Copy Environment File**

   ```bash
   cp .env.example .env
   ```

3. **Start Docker Containers**

   ```bash
   docker-compose up -d --build
   ```

   **📊 Database akan otomatis dibuat:**

   - `airflow_metadata` - Airflow internal database (WAJIB!)
   - `mitra_kaido` - ML results database

4. **Tunggu ~30 detik untuk initialization**

5. **Verifikasi services running:**

   ```bash
   docker-compose ps
   ```

   Expected:

   - ✅ `simitra_postgres` - Up (healthy)
   - ✅ `simitra_airflow` - Up (port 8080)
   - ✅ `simitra_api` - Up (port 8001)

6. **Access services:**
   - Airflow UI: http://localhost:8080
   - API Docs: http://localhost:8001/docs


## 🔧 Troubleshooting

### ⚠️ Error: `$'\r': command not found` atau `invalid option` (Line Endings Issue)

**Gejala:**
```
/opt/airflow/init-airflow.sh: line 2: set: -
set: usage: set [-abefhkmnptuvxBCEHPT] [-o option-name] [--] [-] [arg ...]
/opt/airflow/init-airflow.sh: line 3: $'\r': command not found
```

**Penyebab:**  
File `init-airflow.sh` menggunakan Windows line endings (CRLF) sedangkan Linux container memerlukan Unix line endings (LF).

**Solusi:**  
Dockerfile sudah dikonfigurasi dengan `dos2unix` untuk otomatis mengkonversi line endings. Cukup **rebuild container**:

```bash
# Stop dan hapus container
docker-compose down

# Rebuild tanpa cache untuk memastikan dos2unix dijalankan
docker-compose build --no-cache airflow

# Start ulang
docker-compose up -d
```

**Verifikasi:**
```bash
docker logs simitra_airflow -f --tail 50
```

Jika berhasil, Anda akan melihat:
```
✅ Airflow initialization complete!
🌐 Webserver will be accessible at http://localhost:8080
```

---

### 🐘 PostgreSQL Port Conflict (Windows)

Jika Anda tidak dapat mengakses PostgreSQL karena port tertahan oleh service lokal atau tidak bisa menjalankan `docker compose down -v`, coba langkah berikut di Windows (jalankan terminal sebagai Administrator):

1. Hentikan service PostgreSQL lokal (contoh nama service: postgresql-x64-17)

```powershell
net stop postgresql-x64-17
# atau di PowerShell sebagai alternatif:
Stop-Service -Name postgresql-x64-17 -Force

# gunakan Linux environtment untuk mematikan mendalam
sudo service postgresql stop

sudo systemctl disable postgres
```

2. Periksa apakah port 5432 masih digunakan oleh proses lain

```powershell
netstat -ano | findstr 5432
# hasil menampilkan PID proses yang memakai port 5432; gunakan Task Manager atau
# `taskkill /PID <pid> /F` untuk menghentikannya bila perlu
```

3. Lakukan clean up docker postgres volume

```
docker-compose down

docker volume rm simitra-kaido-api_postgres_data
```

4. Setelah memastikan port 5432 bebas, jalankan kembali Docker Compose

```powershell
docker-compose up -d
```

Catatan: perintah `net stop`/`Stop-Service` akan menghentikan service PostgreSQL yang di-install secara native pada Windows. Gunakan pendekatan ini hanya jika Anda memang menjalankan instance Postgres lokal yang mengganggu kontainer Docker.
