from airflow.models import BaseOperator
from airflow.utils.decorators import apply_defaults
from pipeline.run_feature_engineering import run_feature_engineering

class FeatureEngineeringOperator(BaseOperator):
    @apply_defaults
    def __init__(self, base_dir: str, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.base_dir = base_dir

    def execute(self, context):
        res = run_feature_engineering(self.base_dir)
        self.log.info("Feature engineering result: %s", res)
        return res
