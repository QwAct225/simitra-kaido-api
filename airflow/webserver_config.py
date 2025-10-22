"""
Custom Airflow webserver configuration for no-authentication mode
This allows direct access to Airflow UI without login
"""
from flask_appbuilder.security.manager import AUTH_DB

AUTH_TYPE = AUTH_DB

AUTH_ROLE_PUBLIC = 'Admin'

APP_THEME = "simplex.css"  

WTF_CSRF_ENABLED = False
WTF_CSRF_TIME_LIMIT = None

ENABLE_PROXY_FIX = True

PERMANENT_SESSION_LIFETIME = 604800  

AUTH_ROLE_ADMIN = 'Admin'
AUTH_USER_REGISTRATION = False
AUTH_USER_REGISTRATION_ROLE = "Admin"

EXPOSE_CONFIG = True

AUTH_RATE_LIMITED = False
AUTH_RATE_LIMIT = "10000 per hour"

