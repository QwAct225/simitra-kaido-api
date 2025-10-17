from airflow.models import BaseOperator
from airflow.utils.decorators import apply_defaults
from pipeline.run_preprocess import run_preprocess

class PreprocessOperator(BaseOperator):
    @apply_defaults
    def __init__(self, raw_dir: str, mode: str = "overwrite", *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.raw_dir = raw_dir
        self.mode = mode

    def execute(self, context):
        res = run_preprocess(self.raw_dir, self.mode)
        self.log.info("Preprocess result: %s", res)
        return res
