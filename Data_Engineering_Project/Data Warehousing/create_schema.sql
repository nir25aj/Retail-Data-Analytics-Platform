BEGIN;

-- Create DimDate table
CREATE TABLE public."DimDate" (
    dateid SERIAL PRIMARY KEY,
    year INT,
    month INT,
    day INT,
    weekday VARCHAR(10),
    week INT
);

-- Create DimCategory table
CREATE TABLE public."DimCategory" (
    categoryid SERIAL PRIMARY KEY,
    categoryname VARCHAR(255)
);

-- Create DimCountry table
CREATE TABLE public."DimCountry" (
    countryid SERIAL PRIMARY KEY,
    countryname VARCHAR(255)
);

-- Create FactSales table (Fact Table)
CREATE TABLE public."FactSales" (
    orderid SERIAL PRIMARY KEY,
    dateid INT REFERENCES public."DimDate"(dateid),
    categoryid INT REFERENCES public."DimCategory"(categoryid),
    countryid INT REFERENCES public."DimCountry"(countryid),
    amount DECIMAL(10, 2)
);

-- Create indexes on foreign keys for FactSales table
CREATE INDEX idx_factsales_dateid ON public."FactSales"(dateid);
CREATE INDEX idx_factsales_categoryid ON public."FactSales"(categoryid);
CREATE INDEX idx_factsales_countryid ON public."FactSales"(countryid);

END;