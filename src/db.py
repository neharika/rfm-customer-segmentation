
import os
from pathlib import Path
from sqlalchemy import event
from psycopg2 import sql
from dotenv import load_dotenv
from sqlalchemy import create_engine, text
from sqlalchemy.engine import URL

# Locate the project root
PROJECT_ROOT = Path(__file__).resolve().parents[1]

# Load environment variables
load_dotenv(PROJECT_ROOT / ".env")

# Read database configuration
DB_HOST = os.getenv("DB_HOST")
DB_PORT = os.getenv("DB_PORT")
DB_NAME = os.getenv("DB_NAME")
DB_USER = os.getenv("DB_USER")
DB_PASSWORD = os.getenv("DB_PASSWORD")
DB_SCHEMA = os.getenv("DB_SCHEMA")

# Validate configuration
required_vars = {
    "DB_HOST": DB_HOST,
    "DB_PORT": DB_PORT,
    "DB_NAME": DB_NAME,
    "DB_USER": DB_USER,
    "DB_PASSWORD": DB_PASSWORD,
    "DB_SCHEMA": DB_SCHEMA,
}

missing = [key for key, value in required_vars.items() if not value]

if missing:
    raise ValueError(f"Missing environment variables: {missing}")

# Construct database URL safely
DATABASE_URL = URL.create(
    drivername="postgresql+psycopg2",
    username=DB_USER,
    password=DB_PASSWORD,
    host=DB_HOST,
    port=int(DB_PORT),
    database=DB_NAME,
)

# Create SQLAlchemy engine
engine = create_engine(
    DATABASE_URL,
    connect_args={
        "sslmode": "require",
    },
    pool_pre_ping=True,
)
@event.listens_for(engine, "connect")
def set_search_path(dbapi_connection, connection_record):

    with dbapi_connection.cursor() as cursor:
        cursor.execute(
            sql.SQL("SET search_path TO {}").format(
                sql.Identifier(DB_SCHEMA)
            )
        )
# Test database connection
def test_connection():
    with engine.connect() as connection:
        result = connection.execute(
            text("""
                SELECT
                    current_database(),
                    current_schema(),
                    version()
            """)
        )
        return result.fetchone()


if __name__ == "__main__":
    print("Testing PostgreSQL connection...")

    try:
        result = test_connection()
        print("Connection successful!")
        print("Database:", result[0])
        print("Schema:", result[1])
    except Exception as e:
        print("Connection failed:", e)
def test_query():
    with engine.connect() as connection:
        result = connection.execute(
            text("SELECT COUNT(*) FROM ecom.orders")
        )
        count = result.scalar()

        print(f"Total orders: {count}")

if __name__ == "__main__":
    test_connection()
    test_query()