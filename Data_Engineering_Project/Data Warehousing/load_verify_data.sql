-- Load data into DimDate table
COPY public."DimDate" (year, month, day, weekday, week) 
FROM '/path/to/DimDate.csv' 
DELIMITER ',' 
CSV HEADER;

-- Load data into DimCategory table
COPY public."DimCategory" (categoryname) 
FROM '/path/to/DimCategory.csv' 
DELIMITER ',' 
CSV HEADER;

-- Load data into DimCountry table
COPY public."DimCountry" (countryname) 
FROM '/path/to/DimCountry.csv' 
DELIMITER ',' 
CSV HEADER;

-- Load data into FactSales table
COPY public."FactSales" (dateid, categoryid, countryid, amount) 
FROM '/path/to/FactSales.csv' 
DELIMITER ',' 
CSV HEADER;

-- Verify data in DimDate
SELECT * FROM public."DimDate" LIMIT 5;

-- Verify data in DimCategory
SELECT * FROM public."DimCategory" LIMIT 5;

-- Verify data in DimCountry
SELECT * FROM public."DimCountry" LIMIT 5;

-- Verify data in FactSales
SELECT * FROM public."FactSales" LIMIT 5;