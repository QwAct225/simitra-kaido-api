#!/bin/bash
set -e

echo "🚀 Initializing Airflow..."

# Initialize database
echo "📊 Running database migrations..."
airflow db migrate

# Create admin user (fallback, but won't be needed for public access)
echo "👤 Creating default admin user (username: admin, password: admin)..."
airflow users create \
    --username admin \
    --password admin \
    --firstname Admin \
    --lastname User \
    --role Admin \
    --email admin@example.com 2>/dev/null || echo "Admin user already exists"

echo "✅ Airflow initialization complete!"
echo "🌐 Webserver will be accessible at http://localhost:8080 (No login required!)"
echo ""

# Start services
echo "🎯 Starting Airflow Webserver..."
airflow webserver &

echo "📅 Starting Airflow Scheduler..."
airflow scheduler
