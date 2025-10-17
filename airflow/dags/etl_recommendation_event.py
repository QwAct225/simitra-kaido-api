import os
import sys
from datetime import datetime
from airflow import DAG
from airflow.operators.python import PythonOperator

sys.path.append(os.path.join(os.path.dirname(__file__), "../project"))
from pipeline.run_recommendation_event import run_recommendation_event

BASE_DIR = "/opt/airflow/project"

with DAG(
    dag_id="survey_event_recommendation",
    start_date=datetime(2025, 10, 17),
    schedule_interval=None,
    catchup=False,
    tags=["Recommendation", "SurveyEvent"]
) as dag:

    recommend_split = PythonOperator(
        task_id="generate_survey_recommendation",
        python_callable=run_recommendation_event,
        op_kwargs={"base_dir": BASE_DIR},
    )
