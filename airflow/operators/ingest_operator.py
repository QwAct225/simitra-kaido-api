from airflow.models import BaseOperator
from airflow.utils.decorators import apply_defaults
from pipeline.ingest import run_ingest

class IngestOperator(BaseOperator):
    @apply_defaults
    def __init__(self, raw_dir: str, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.raw_dir = raw_dir

    def execute(self, context):
        res = run_ingest(self.raw_dir)
        self.log.info("Ingest result: %s", res)
        return res
