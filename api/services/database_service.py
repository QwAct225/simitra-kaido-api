import psycopg2
import pandas as pd
import numpy as np
from dotenv import load_dotenv
import os

load_dotenv()

DB_CONFIG = {
    "dbname": os.getenv("DB_NAME"),
    "user": os.getenv("DB_USER"),
    "password": os.getenv("DB_PASS"),
    "host": os.getenv("DB_HOST", "postgres"),
    "port": os.getenv("DB_PORT", "5432")
}

def fetch_table(table_name: str, order_by: str = None):
    """Ambil data dari PostgreSQL dan pastikan aman dari NaN/inf"""
    conn = psycopg2.connect(**DB_CONFIG)
    query = f"SELECT * FROM {table_name}"
    if order_by:
        query += f" ORDER BY {order_by} DESC"

    df = pd.read_sql(query, conn)
    conn.close()

    df = df.replace([np.nan, np.inf, -np.inf], None)

    return df.to_dict(orient="records")
