# Retail Data Analytics Platform

## Project Overview
This capstone project focuses on designing and building a comprehensive data platform for retail data analytics. The platform integrates OLTP (MySQL), NoSQL (MongoDB), and data warehouse systems (PostgreSQL, IBM DB2), automates ETL processes using Apache Airflow, performs big data analytics with Apache Spark and Hadoop, and generates business intelligence reports using IBM Cognos Analytics. Predictive sales forecasting is implemented using machine learning models.

## Objective
The main goal is to design and implement a robust data platform capable of handling large-scale retail data, integrating multiple databases, and using advanced analytics techniques to derive actionable insights for business needs.

## Tech Stack
- **OLTP Databases**: MySQL
- **NoSQL Databases**: MongoDB
- **Data Warehousing**: PostgreSQL, IBM DB2
- **ETL**: Apache Airflow, Python
- **Big Data Analytics**: Apache Spark, Hadoop
- **Business Intelligence**: IBM Cognos Analytics
- **Machine Learning**: Scikit-learn, Spark MLlib
- **Programming Languages**: Python, SQL

## Overview

### OLTP Integration
- **Objective**: Integrated MySQL as the OLTP system for transactional data.
- **Tasks**:
  - Setup and design of OLTP schema for retail operations.
  - Created database triggers and stored procedures to ensure data consistency.
  - Extracted data for further analysis.

### NoSQL Integration
- **Objective**: Implemented MongoDB for semi-structured data storage.
- **Tasks**:
  - Designed MongoDB collections for handling user logs and reviews.
  - Created aggregation pipelines to process and analyze JSON data.

### Data Warehousing
- **Objective**: Built a data warehouse in PostgreSQL for analytical queries.
- **Tasks**:
  - Designed dimension and fact tables for retail sales data.
  - Loaded data from staging to production warehouse using incremental load strategies.

### Data Synchronization & ETL Automation
- **Objective**: Automated incremental data loading from staging (MySQL) to production (DB2).
- **Tasks**:
  - Wrote Python scripts for incremental data extraction, transformation, and loading (ETL).
  - Integrated IBM DB2 for production data warehousing.
  - Scheduled ETL tasks using Apache Airflow.

### Web Log Data Pipeline
- **Objective**: Analyzed web server logs using Apache Airflow.
- **Tasks**:
  - Created DAGs for extracting, transforming, and loading web log data.
  - Archived transformed data into a tar file using Airflow’s task pipeline.

### Predictive Analytics
- **Objective**: Predictive sales forecasting using pre-trained ML models.
- **Tasks**:
  - Loaded pre-trained sales forecasting models.
  - Ran predictions on next year’s sales data.
  - Used Apache Spark for processing large datasets and machine learning.

## Key Features
- Integration of multiple databases for efficient data storage and processing.
- Automated ETL workflows using Apache Airflow.
- Big data analytics using Spark and Hadoop for faster processing.
- Business intelligence reporting with IBM Cognos Analytics.
- Machine learning-driven predictive analytics.

## Conclusion
This project demonstrates a full-cycle data engineering workflow, from data ingestion and storage to big data processing and business intelligence reporting. The integration of machine learning models further enhances decision-making capabilities, making this platform a robust solution for handling retail analytics at scale.



