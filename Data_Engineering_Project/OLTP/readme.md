
# OLTP Database Design and Administration with MySQL

## Scenario

I am a data engineer at an e-commerce company. My task is to design a data platform that uses MySQL as an OLTP database for storing transactional data. This involves creating and managing the schema, loading data, and automating certain admin tasks.

## Objectives

1. Design the schema for the OLTP database.
2. Load data into the OLTP database.
3. Automate various administrative tasks using MySQL and Bash scripting.

## Task Overview

### Task 1: Create a Database

- **Objective**: Create a database named `sales`.
- **Steps**:
  1. Using MySQL, I created a database with the name `sales` to store transactional data.

### Task 2: Design a Table

- **Objective**: Design a table named `sales_data` to hold transactional data.
- **Steps**:
  1. I designed the `sales_data` table with appropriate columns to capture sales details, such as `transaction_id`, `product_id`, `quantity`, `price`, etc.

### Task 3: Import Data

- **Objective**: Import the data from the file `oltpdata.csv` into the `sales_data` table.
- **Steps**:
  1. I used MySQL's `LOAD DATA INFILE` command to load the data from `oltpdata.csv` into the `sales_data` table.

### Task 4: List Tables in the Database

- **Objective**: List all the tables in the `sales` database.
- **Steps**:
  1. I used the `SHOW TABLES` command to list all tables in the `sales` database.
     
  ![Tables](https://github.com/nir25aj/ssad/blob/my-new-branch/Data_Engineering_Project/OLTP/listtables.PNG "Tables")

### Task 5: Query to Count Records

- **Objective**: Write a query to find out the count of records in the `sales_data` table.
- **Steps**:
  1. I executed a `SELECT COUNT(*)` query to count the total records in the `sales_data` table.
  ![records](https://github.com/nir25aj/ssad/blob/my-new-branch/Data_Engineering_Project/OLTP/salesrows.PNG "records")

### Task 6: Create an Index

- **Objective**: Create an index on the `transaction_id` column in the `sales_data` table to optimize query performance.
- **Steps**:
  1. I created an index using the `CREATE INDEX` command to enhance query performance for `transaction_id` searches.

### Task 7: List Indexes

- **Objective**: List all indexes created for the `sales_data` table.
- **Steps**:
  1. I used the `SHOW INDEX` command to list all indexes for the `sales_data` table.
     
  ![indexes](https://github.com/nir25aj/ssad/blob/my-new-branch/Data_Engineering_Project/OLTP/listindexes.PNG"indexes")

### Task 8: Write a Bash Script to Export Data

- **Objective**: Write a bash script to automate data export from the `sales_data` table.
- **Steps**:
  1. I created a bash script that exports the data from the `sales_data` table into a CSV file using the `mysqldump` command.
  2. The bash script automates the process, exporting the data daily.


