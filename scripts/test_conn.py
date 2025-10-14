import psycopg2, os
from dotenv import load_dotenv


# Cari .env di root project, bukan relatif ke scripts/
base_dir = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
env_path = os.path.join(base_dir, ".env")
load_dotenv(env_path)

if not os.path.exists(env_path):
    print("⚠️  File .env tidak ditemukan di:", env_path)
else:
    print("✅ File .env ditemukan di:", env_path)


print("🔍 Testing psycopg2 connection...")
print("DB_PASS:", os.getenv("DB_PASS"))

try:
    conn = psycopg2.connect(
        dbname=os.getenv("DB_NAME"),
        user=os.getenv("DB_USER"),
        password=os.getenv("DB_PASS"),
        host=os.getenv("DB_HOST"),
        port=os.getenv("DB_PORT"),
        connect_timeout=5
    )
    print("✅ Connection success!")
    conn.close()
except Exception as e:
    print("❌ Connection failed:", e)
