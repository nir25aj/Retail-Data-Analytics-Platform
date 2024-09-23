
# NoSQL Database Design and Administration with MongoDB

## Scenario

I am a data engineer at an e-commerce company. My task is to design a data platform that uses MongoDB as a NoSQL database to store the e-commerce catalog data.

## Objectives

1. Import data into a MongoDB database.
2. Query data in a MongoDB database.
3. Export data from MongoDB.

## Tools / Software

- MongoDB Server
- MongoDB Command Line Backup Tools

## Task Overview

### Task 1: Import Data

- **Objective**: Import the `catalog.json` file into MongoDB under the `catalog` database and `electronics` collection.
- **Steps**:
  1. I used the `mongoimport` command to load the data from the `catalog.json` file into the MongoDB database.

### Task 2: List All Databases

- **Objective**: List all the databases in the MongoDB server.
- **Steps**:
  1. I used the `show dbs` command to list all the databases on the MongoDB server.
  ![db](https://github.com/nir25aj/ssad/blob/my-new-branch/Data_Engineering_Project/NoSQL%20-%20MongoDB/2.PNG "db")

### Task 3: List All Collections

- **Objective**: List all the collections in the `catalog` database.
- **Steps**:
  1. I used the `show collections` command to list all the collections in the `catalog` database.
  ![coll](https://github.com/nir25aj/ssad/blob/my-new-branch/Data_Engineering_Project/NoSQL%20-%20MongoDB/3.PNG "coll")

### Task 4: Create an Index

- **Objective**: Create an index on the `type` field in the `electronics` collection.
- **Steps**:
  1. I used the `createIndex` function in MongoDB to create an index on the `type` field.
  ![index](https://github.com/nir25aj/ssad/blob/my-new-branch/Data_Engineering_Project/NoSQL%20-%20MongoDB/4.PNG "index")

### Task 5: Query to Find the Count of Laptops

- **Objective**: Write a query to find the count of laptops in the `electronics` collection.
- **Steps**:
  1. I used a MongoDB query to find the count of laptops based on the `type` field.
  ![laptop](https://github.com/nir25aj/ssad/blob/my-new-branch/Data_Engineering_Project/NoSQL%20-%20MongoDB/5.PNG "laptop")

### Task 6: Query to Find Smart Phones with a 6-inch Screen

- **Objective**: Write a query to find the number of smartphones with a screen size of 6 inches.
- **Steps**:
  1. I used a MongoDB query to filter smartphones based on the `screen_size` field set to 6 inches.
  ![smartphones](https://github.com/nir25aj/ssad/blob/my-new-branch/Data_Engineering_Project/NoSQL%20-%20MongoDB/6.PNG "smartphones")

### Task 7: Query to Find Average Screen Size of Smartphones

- **Objective**: Write a query to find out the average screen size of smartphones.
- **Steps**:
  1. I used MongoDB's aggregation pipeline to calculate the average screen size for smartphones.
  ![avg](https://github.com/nir25aj/ssad/blob/my-new-branch/Data_Engineering_Project/NoSQL%20-%20MongoDB/7.PNG "avg")

### Task 8: Export Data

- **Objective**: Export the fields `_id`, `type`, and `model` from the `electronics` collection into a CSV file named `electronics.csv`.
- **Steps**:
  1. I used the `mongoexport` command to export the data into a CSV file.
  2. The exported CSV file is saved as `electronics.csv`.


