import os
import sys
from datetime import datetime
from airflow import DAG
from airflow.operators.python import PythonOperator

sys.path.append(os.path.join(os.path.dirname(__file__), "../project"))
from pipeline.run_ingest import run_ingest
from pipeline.run_preprocess import run_preprocess
from pipeline.run_feature_engineering import run_feature_engineering
from pipeline.run_ranking_mitra import run_fuzzy_cbf
from pipeline.run_weight_optimizer import weight_optimizer
from pipeline.run_recommendation_event import run_recommendation_event

BASE_DIR = "/opt/airflow/project"

with DAG(
    dag_id="master_mitra_survey",
    start_date=datetime(2025, 10, 14),
    schedule_interval=None,
    catchup=False,
    tags=["ETL", "Recommedation", "Linguistic", "CBF", "PSO", "Ranking", "SurveyEvent"],
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

    feature_engineering = PythonOperator(
        task_id="feature_engineering",
        python_callable=run_feature_engineering,
        op_kwargs={"base_dir": BASE_DIR},
    )

    fuzzy_cbf = PythonOperator(
        task_id="fuzzy_cbf_model",
        python_callable=run_fuzzy_cbf,
        op_kwargs={"base_dir": BASE_DIR},
    )

    optimize_weight = PythonOperator(
        task_id="optimize_weights",
        python_callable=weight_optimizer,
        op_kwargs={"base_dir": BASE_DIR},
    )

    recommend_survey_mitra = PythonOperator(
        task_id="generate_survey_recommendation",
        python_callable=run_recommendation_event,
        op_kwargs={"base_dir": BASE_DIR},
    )

    ingest >> preprocess >> feature_engineering >> fuzzy_cbf >> optimize_weight >> recommend_survey_mitra
