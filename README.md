# 🧠 Machine Learning Backend Service (Mitra Ranking & Survey Aggregator)
Backend ML ini bertugas untuk mengelola, memproses, dan menghitung hasil pemeringkatan mitra serta performa survei secara otomatis.
Sistem dirancang dengan arsitektur terpisah antara profil mitra (ML pipeline) dan hasil survei (aggregator pipeline) agar proses lebih modular, efisien, dan mudah di-maintain.

## 🧱 Struktur Folder
    simitra-kaido-api/
    ├── data/
    │   └── raw/
    │       ├── raw_mitra.csv
    │       ├── cleaned_mitra.csv
    │       └── cleaned_mitra.json
    ├── scripts/
    │   ├── run_preprocessing.py
    │   └── run_ingestion.py
    ├── docker-compose.yml
    ├── .env.example
    ├── requirements.txt
    └── README.md


## 🚀 Quick Start

1. **Clone repository ini**
   ```bash
   git clone https://github.com/namamu/simitra-kaido-api.git
   cd simitra-kaido-api
   ```
2. **Aktifkan virtual environment dan install dependencies**
    ```bash
    python -m venv venv
    source venv/bin/activate   # untuk macOS/Linux/WSL
    # atau:
    venv\Scripts\activate      # untuk Windows PowerShell

    pip install -r requirements.txt
    ```
3. **Copy Environment File**
    ```bash
    cp .env.example .env
    ```
4. **Jalankan PostgreSQL menggunakan Docker**
    ```bash
    docker compose up -d
    ```
5. **Jalankan Preprocessing**
    ```bash
    python scripts/run_preprocessing.py
    ```