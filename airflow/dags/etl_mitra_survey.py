import os
import sys
from datetime import datetime
from airflow import DAG
from airflow.operators.python import PythonOperator

sys.path.append(os.path.join(os.path.dirname(__file__), "../project"))
from pipeline.ingest import run_ingest
from pipeline.preprocess import run_preprocess

BASE_DIR = "/opt/airflow/project"

with DAG(
    dag_id="etl_mitra_survey",
    start_date=datetime(2025, 10, 14),
    schedule_interval=None,
    catchup=False,
    tags=["ETL", "Mitra", "Survey"]
) as dag:

    ingest = PythonOperator(
        task_id="ingest_data",
        python_callable=run_ingest,
        op_kwargs={"base_dir": BASE_DIR},
    )

    preprocess = PythonOperator(
        task_id="preprocess_data",
        python_callable=run_preprocess,
        op_kwargs={"base_dir": BASE_DIR},
    )

    ingest >> preprocess
