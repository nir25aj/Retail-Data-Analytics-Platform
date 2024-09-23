# Data Synchronization and Pipeline Automation

## Exercise 1: Data Synchronization Between Staging and Production Data Warehouses

### Scenario
As a data engineer at an e-commerce company, I need to automate the process of synchronizing data between a MySQL staging warehouse and an IBM DB2 production data warehouse. This script will automate the process, saving time and standardizing the data synchronization procedure.

### Objectives
- Connect to the IBM DB2 production warehouse and retrieve the last row ID.
- Connect to the MySQL staging data warehouse and find all rows after the last row ID.
- Insert the new rows from the staging warehouse into the IBM DB2 production data warehouse.

### Tools / Software
- MySQL Server
- IBM DB2

---

### Automate Loading of Incremental Data into the Data Warehouse

### Task 1: Implement the `get_last_rowid()` Function
I implemented the `get_last_rowid()` function to connect to the IBM DB2 data warehouse and retrieve the last row ID.

-  ![last](https://github.com/nir25aj/ssad/blob/my-new-branch/Data_Engineering_Project/ETL%20and%20Data%20Pipelines/get_last_rowid.jpg "last")

### Task 2: Implement the `get_latest_records()` Function
I implemented the `get_latest_records()` function to connect to the MySQL staging data warehouse and retrieve all records inserted after the last row ID.

- ![latest](https://github.com/nir25aj/ssad/blob/my-new-branch/Data_Engineering_Project/ETL%20and%20Data%20Pipelines/get_latest_records.JPG "latest")

### Task 3: Implement the `insert_records()` Function
I implemented the `insert_records()` function to insert the retrieved records from the staging warehouse into the IBM DB2 production warehouse.

- ![insert](https://github.com/nir25aj/ssad/blob/my-new-branch/Data_Engineering_Project/ETL%20and%20Data%20Pipelines/insert_records.JPG "insert")

### Task 4: Test the Data Synchronization
I ran the `automation.py` script to test if the data synchronization between the staging and production warehouses was successful.

---

## Exercise 2: Web Server Log Analysis and ETL Pipeline

### Scenario
I will create an Apache Airflow DAG to analyze a web server log file, extract the required fields, transform the data, and load it into a tar file. The pipeline will be executed daily to automate the log file processing.

### Objectives
- Extract data from a web server log file.
- Transform the data by filtering specific records and converting sizes to MB.
- Load the transformed data into a tar file.

### Tools / Software
- Apache Airflow

---

### Create an ETL DAG in Apache Airflow

### Task 1: Define the DAG Arguments
I created a DAG with the following arguments:
- `owner`: My name
- `start_date`: The start date of the pipeline.
- `email`: My email for notifications.


### Task 2: Define the DAG
I defined a DAG named `process_web_log` that runs daily and added a description explaining the purpose of the DAG.


### Task 3: Create the `extract_data` Task
I created an `extract_data` task that extracts the `ipaddress` field from the web server log file and saves it into a file named `extracted_data.txt`.


### Task 4: Create the `transform_data` Task
I created a `transform_data` task that filters out occurrences of IP address `198.46.149.143` from `extracted_data.txt` and saves the output into a file named `transformed_data.txt`.


### Task 5: Create the `load_data` Task
I created a `load_data` task that archives the `transformed_data.txt` file into a tar file named `weblog.tar`.


### Task 6: Define the Task Pipeline
I defined the task pipeline as follows:
- First task: `extract_data`
- Second task: `transform_data`
- Third task: `load_data`

---

### Getting the DAG Operational

### Task 7: Submit the DAG
I saved the DAG in a file named `process_web_log.py` and submitted it to Apache Airflow.


### Task 8: Unpause the DAG
I unpaused the DAG to make it active in Airflow.


### Task 9: Monitor the DAG
I monitored the DAG run from the Airflow console to ensure everything was running smoothly.


---

## Conclusion
I automated the synchronization of data between a MySQL staging warehouse and an IBM DB2 production warehouse. Additionally, I authored an Apache Airflow DAG to extract, transform, and load data from a web server log file into a tar file. Both processes help standardize data processing and synchronization tasks efficiently.
