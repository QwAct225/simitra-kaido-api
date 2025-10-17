from airflow.models import BaseOperator
from airflow.utils.decorators import apply_defaults
from pipeline.run_recommendation_event import run_recommendation_event

class RecommendationEventOperator(BaseOperator):
    @apply_defaults
    def __init__(self, base_dir: str, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.base_dir = base_dir

    def execute(self, context):
        result = run_recommendation_event(self.base_dir)
        self.log.info(f"Rumah Tangga: {len(result['rumah_tangga'])} mitra")
        self.log.info(f"Perusahaan: {len(result['perusahaan'])} mitra")
        return result
