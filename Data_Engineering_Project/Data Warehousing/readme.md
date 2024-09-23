# Module 3: Designing and Implementing a Data Warehouse

## Scenario
I am a data engineer hired by an ecommerce company named SoftCart.com. The company retails digital items such as E-Books, Movies, Songs, etc., and operates globally. To enhance its data reporting capabilities, the company plans to create a data warehouse. 

## Objectives
1. Design a data warehouse schema using the pgAdmin ERD design tool.
2. Create the schema in the data warehouse.
3. Load data into the data warehouse.
4. Write aggregation queries.
5. Create materialized query tables (MQTs).

### Tools / Software
- ERD Design Tool of pgAdmin
- PostgreSQL Database Server

### Exercise 1 - Design a Data Warehouse

### Task 1: Design the Dimension Table softcartDimDate
- The granularity for this table is daily, enabling reports at yearly, monthly, daily, and weekday levels.

### Task 2: Design the Dimension Table softcartDimCategory
- Created a dimension table for product categories.

### Task 3: Design the Dimension Table softcartDimItem
- Created a dimension table for items sold on SoftCart.

### Task 4: Design the Dimension Table softcartDimCountry
- Designed a table to store country data for sales reports.

### Task 5: Design the Fact Table softcartFactSales
- This fact table records transactional data such as sales volume and revenue.

### Task 6: Design the Relationships
- Defined one-to-many relationships between the dimension and fact tables.

### Task 7: Create the Schema
- Created the schema in PostgreSQL using the SQL generated from the ERD tool.

## Exercise 2: Loading Data and Writing Queries

### Task 1: Load Data into the Dimension Table DimDate
- Loaded the DimDate data and verified the first 5 rows.
- ![dimdate](https://github.com/nir25aj/ssad/blob/my-new-branch/Data_Engineering_Project/Data%20Warehousing/DimDate.png "dimdate")
   
### Task 2: Load Data into the Dimension Table DimCategory
- Loaded the DimCategory data and verified the first 5 rows.
-  ![dimcategory](https://github.com/nir25aj/ssad/blob/my-new-branch/Data_Engineering_Project/Data%20Warehousing/DimCategory.png "dimcategory")

### Task 3: Load Data into the Dimension Table DimCountry
- Loaded the DimCountry data and verified the first 5 rows.
-  ![dimcountry](https://github.com/nir25aj/ssad/blob/my-new-branch/Data_Engineering_Project/Data%20Warehousing/DimCountry.png "dimcountry")

### Task 4: Load Data into the Fact Table FactSales
- Loaded sales data into the FactSales table and verified the first 5 rows.
-  ![factsales](https://github.com/nir25aj/ssad/blob/my-new-branch/Data_Engineering_Project/Data%20Warehousing/FactSales.png "factsales")

### Task 5: Grouping Sets Query
- Created a query with grouping sets using the columns `country`, `category`, and `totalsales`.
-  ![groupingsets](https://github.com/nir25aj/ssad/blob/my-new-branch/Data_Engineering_Project/Data%20Warehousing/groupingsets.png "groupingsets")

### Task 6: Rollup Query
- Created a rollup query to show total sales by `year` and `country`.
-  ![rollup](https://github.com/nir25aj/ssad/blob/my-new-branch/Data_Engineering_Project/Data%20Warehousing/rollup.png "rollup")

### Task 7: Cube Query
- Created a cube query using `year`, `country`, and average sales.
-  ![cube](https://github.com/nir25aj/ssad/blob/my-new-branch/Data_Engineering_Project/Data%20Warehousing/cube.png "cube")

### Task 8: Materialized Query Table (MQT)
- Created an MQT named `total_sales_per_country` that stores `country` and `total_sales`.
-  ![mqt](https://github.com/nir25aj/ssad/blob/my-new-branch/Data_Engineering_Project/Data%20Warehousing/mqt.png "mqt")

## Conclusion
Here, I covered the design and implementation of a data warehouse for SoftCart.com, allowing for better reporting and analytics on sales data. The schema was created and data was loaded into various dimension and fact tables. I also created essential queries such as grouping sets, rollup, and cube queries, along with a materialized query table.
