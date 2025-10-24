FROM apache/airflow:2.10.2

USER root

# Install system dependencies including dos2unix for line ending conversion
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    dos2unix \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER airflow

# Copy and install Python requirements
COPY airflow/requirements.txt /opt/airflow/requirements.txt

RUN pip install --no-cache-dir -r /opt/airflow/requirements.txt

# Copy initialization script and fix line endings
USER root
COPY airflow/init-airflow.sh /opt/airflow/init-airflow.sh
RUN dos2unix /opt/airflow/init-airflow.sh && \
    chmod +x /opt/airflow/init-airflow.sh && \
    chown airflow:root /opt/airflow/init-airflow.sh

USER airflow

# Set working directory
WORKDIR /opt/airflow
