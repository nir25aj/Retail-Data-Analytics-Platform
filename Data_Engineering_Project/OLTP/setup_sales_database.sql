-- Create a database
CREATE DATABASE IF NOT EXISTS sales;

-- Create sales_data table
USE sales;
CREATE TABLE IF NOT EXISTS sales_data(
    product_id INT NOT NULL PRIMARY KEY,
    customer_id INT,
    price DECIMAL(10, 2),  
    quantity INT,
    timestamp DATETIME    
);

-- Import oltpdata.csv to sales_data

-- List the tables in the database sales
USE sales;
SHOW TABLES;

-- Find the count of records in sales_data
SELECT COUNT(*) FROM sales_data;

-- Create index on timestamp field
CREATE INDEX ts ON sales_data(timestamp);

-- List indexes on sales_data
SHOW INDEX FROM sales_data;