"""
Axion Ingestion Service - Configuration
Loads database connection string from environment variable.
"""

import os
from dataclasses import dataclass


@dataclass
class Settings:
    # PostgreSQL connection string
    # Format: postgresql://<user>:<password>@<host>:<port>/<database>
    # Example: postgresql://postgres:postgres@localhost:5432/axiondb
    DATABASE_URL: str = os.getenv(
        "DATABASE_URL",
        "postgresql://jarvis:jarvis123@postgres-svc:5432/jarvis",
    )
# "postgresql://postgres-svc.akkc.svc.cluster.local:5432",
settings = Settings()
