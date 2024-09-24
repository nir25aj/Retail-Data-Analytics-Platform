# Import libraries required for connecting to mysql and postgres
import mysql.connector
import psycopg2

# Connect to MySQL
connection = mysql.connector.connect(user='root', password='ODAwOS1yYW1lc2hz', host='127.0.0.1', database='sales')
if connection:
    print("Connected to MySQL")

# Create MySQL cursor
cursor = connection.cursor()

# Connect to PostgreSQL
pg_conn = psycopg2.connect(
    user='postgres',
    password='postgres_password',
    host='127.0.0.1',
    port='5432',
    database='sales_data'
)
if pg_conn:
    print("Connected to PostgreSQL")

# Create PostgreSQL cursor
pg_cursor = pg_conn.cursor()

# Function to get the last rowid from PostgreSQL sales_data table
def get_last_rowid():
    pg_cursor.execute("SELECT MAX(rowid) FROM sales_data")
    row_id = pg_cursor.fetchone()[0]
    return row_id if row_id else 0

# Function to get latest records from MySQL based on the last rowid
def get_latest_records(rowid):
    cursor.execute(f"SELECT * FROM sales_data WHERE rowid > {rowid}")
    return cursor.fetchall()

# Function to insert records into PostgreSQL
def insert_records(records):
    if records:
        for row in records:
            pg_cursor.execute("INSERT INTO sales_data(rowid, product_id, customer_id, price, quantity, timestamp) VALUES(%s,%s,%s,%s,%s,%s)", row)
        pg_conn.commit()

# Get last rowid from PostgreSQL and new records from MySQL
last_row_id = get_last_rowid()
new_records = get_latest_records(last_row_id)

# Insert new records into PostgreSQL
insert_records(new_records)

# Close connections
connection.close()
pg_conn.close()

print(f"Synced {len(new_records)} new rows.")
