-- AGGREGATE FUNCTIONS 

-- TYPES OF AGGREGATE FUNCTIONS 
  -- AVG() , SUM() , COUNT(), MAX(), MIN().
  -- AGGREGATE FUNCTIONS OFTEN USE GROUP BY 
  
  
  
  -- The aggregate funtion can only work when the column selected in the select statement is used in the Group by clause
  SELECT segment,
  ROUND(AVG(sales),2) AS "Avg_sales",
  ROUND(SUM(sales),2) AS "Total_sales",
  ROUND(MAX(sales),2) AS "Max_sales",
  ROUND(MIN(sales),2) AS "Min_sales"
  FROM financial_sample.`financial samples`
  GROUP BY Segment
  ORDER BY Avg_sales DESC;
  -------------------------------------------------------------------------------------------------------------------------
  -- For instance we have two selected columns in the select statement and we need to know the Avg of both columns 
  SELECT segment,
  Product,
  ROUND(AVG(sales),2) AS "Avg_sales",
  ROUND(SUM(sales),2) AS "Total_sales",
  ROUND(MAX(sales),2) AS "Max_sales",
  ROUND(MIN(sales),2) AS "Min_sales"
  FROM financial_sample.`financial samples`
  GROUP BY Segment,product
  ORDER BY Avg_sales DESC;
  
  ------------------------------------------------------------------------------------------------------------------------------
  
  
  -- You can use aggregate function as a window funtion but you don't need to include Group by clause because 
  -- the partition by will categorize each selected columns 
  
  SELECT segment,
  product,
  AVG(sales) OVER (PARTITION BY segment,product) AS "Avg_sales",
  SUM(sales) OVER (PARTITION BY segment,product) AS "Total_sales",
  MAX(sales) OVER (PARTITION BY segment,product) AS "Max_sales",
  MIN(sales) OVER (PARTITION BY segment,product) AS "Min_sales"
  FROM financial_sample.`financial samples`;
  
  --------------------------------------------------------------------------------------------------------------------------------
  
  -- COUNT(COLUMN_NAME) AND COUNT(*) are two different functions but they till count in a different way
  
  -- COUNT(COLUMN_NAME) counts the number of records in the table where column_name is not null
  -- COUNT(*) counts the number of records in the table
  
  SELECT COUNT(product) AS "Count_of_sales",
  COUNT(*) AS "Row_count"
  FROM financial_sample.`financial samples`;
  
  
  --------------------------------------------------------------------------------------------------------------------------------
  