-- ROLLUP Query
SELECT country, year, SUM(amount) AS totalsales
FROM public."FactSales"
LEFT JOIN public."DimCountry"
    ON public."FactSales".countryid = public."DimCountry".countryid
LEFT JOIN public."DimDate"
    ON public."FactSales".dateid = public."DimDate".dateid
GROUP BY ROLLUP(country, year)
ORDER BY country, year;

-- CUBE Query
SELECT country, year, SUM(amount) AS totalsales
FROM public."FactSales"
LEFT JOIN public."DimCountry"
    ON public."FactSales".countryid = public."DimCountry".countryid
LEFT JOIN public."DimDate"
    ON public."FactSales".dateid = public."DimDate".dateid
GROUP BY CUBE(country, year)
ORDER BY country, year;

-- GROUPING SETS Query
SELECT country, year, SUM(amount) AS totalsales
FROM public."FactSales"
LEFT JOIN public."DimCountry"
    ON public."FactSales".countryid = public."DimCountry".countryid
LEFT JOIN public."DimDate"
    ON public."FactSales".dateid = public."DimDate".dateid
GROUP BY GROUPING SETS(country, year)
ORDER BY country, year;

-- Materialized Query Table (MQT)
CREATE MATERIALIZED VIEW total_sales_per_country (country, total_sales) AS
(
    SELECT country, SUM(amount) 
    FROM public."FactSales"
    LEFT JOIN public."DimCountry"
    ON public."FactSales".countryid = public."DimCountry".countryid
    GROUP BY country
);

-- Refresh the MQT
REFRESH MATERIALIZED VIEW total_sales_per_country;

-- View the results
SELECT * FROM total_sales_per_country;