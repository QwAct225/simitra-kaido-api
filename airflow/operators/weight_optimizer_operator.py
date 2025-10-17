from airflow.models import BaseOperator
from airflow.utils.decorators import apply_defaults
from pipeline.run_weight_optimizer import weight_optimizer

class PSOOptimizerOperator(BaseOperator):
    @apply_defaults
    def __init__(self, base_dir: str, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.base_dir = base_dir

    def execute(self, context):
        self.log.info("🚀 Menjalankan PSO Optimizer...")
        result = weight_optimizer(self.base_dir)
        self.log.info("✅ PSO selesai dijalankan dengan hasil: %s", result.head())
        return result
