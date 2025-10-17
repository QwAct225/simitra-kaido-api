from airflow.models import BaseOperator
from airflow.utils.decorators import apply_defaults
from pipeline.run_ranking_mitra import run_fuzzy_cbf

class FuzzyCBFOperator(BaseOperator):
    @apply_defaults
    def __init__(self, base_dir: str, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.base_dir = base_dir

    def execute(self, context):
        self.log.info("🚀 Menjalankan Fuzzy + CBF Model Pipeline...")
        result = run_fuzzy_cbf(self.base_dir)
        self.log.info(f"✅ Fuzzy + CBF selesai. Jumlah data: {len(result)} baris.")
        return result
