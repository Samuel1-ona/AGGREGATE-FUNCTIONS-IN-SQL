# AGGREGATE FUNCTIONS IN SQL
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
![sqlaggregatefns](https://user-images.githubusercontent.com/68438893/233687506-766eb7cb-af76-4b6a-89f5-95f321413ca3.png)

Aggregate functions in SQL are used to perform calculations on groups of rows or entire tables, returning a single value for each group. The most commonly used aggregate functions are SUM, COUNT, AVG, MIN, and MAX.

Syntax:
The syntax for using these functions is as follows:

```SUM(column_name)``` - calculates the sum of values in a column
```COUNT(column_name)``` - counts the number of non-null values in a column
```AVG(column_name)``` - calculates the average of values in a column
```MIN(column_name)``` - returns the minimum value in a column
```MAX(column_name)``` - returns the maximum value in a column


```
-- Calculate the sum of values in a column
SELECT SUM(column_name)  AS sum_col
FROM table_name;

-- Calculate the maximum value in a column
SELECT MAX(column_name)  AS max_col
FROM table_name;

-- Calculate the minimum value in a column
SELECT MIN(column_name) AS min_col
FROM table_name;

-- Calculate the average of values in a column
SELECT AVG(column_name) AS avg_col
FROM table_name;

-- Count the number of non-null values in a column
SELECT COUNT(column_name) AS count_col
FROM table_name;

-- Count the total number of rows in a table (including null values)
SELECT COUNT(*) AS count_star_col
FROM table_name;
```


These functions can be used with the SELECT statement to generate a result set that summarizes the data in a table. They can also be used in conjunction with the GROUP BY clause to group the data by one or more columns and perform the calculation on each group separately.
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# USING AGGREGATE FUNCTION AS A WINDOW FUNCTION

These functions can also be used as window functions, which allow you to perform calculations on a subset of rows in a table.

Syntax:
The syntax for using these functions as window functions is as follows:

```SUM(column_name) OVER (PARTITION BY partition_column ORDER BY sort_column ROWS/RANGE frame_definition)``` - calculates the sum of values in a column over a specified window of rows
```COUNT(column_name) OVER (PARTITION BY partition_column ORDER BY sort_column ROWS/RANGE frame_definition)``` - counts the number of non-null values in a column over a specified window of rows
``AVG(column_name) OVER (PARTITION BY partition_column ORDER BY sort_column ROWS/RANGE frame_definition)``` - calculates the average of values in a column over a specified window of rows
```MIN(column_name) OVER (PARTITION BY partition_column ORDER BY sort_column ROWS/RANGE frame_definition)``` - returns the minimum value in a column over a specified window of rows
```MAX(column_name) OVER (PARTITION BY partition_column ORDER BY sort_column ROWS/RANGE frame_definition)``` - returns the maximum value in a column over a specified window of rows
In the syntax above, the OVER() clause defines the window of rows to be used in the calculation. **The PARTITION BY clause divides the rows into partitions based on a specified column, while the ORDER BY clause sorts the rows within each partition based on a specified column.** The ROWS or RANGE frame definition specifies the range of rows to be included in the window calculation.

```
-- Calculate the sum of values in a column using a window function
SELECT column_name,
SUM(column_name) OVER(PARTITION BY column_name) AS sum_col
FROM table_name;

-- Calculate the maximum value in a column using a window function
SELECT column_name,
MAX(column_name) OVER(PARTITION BY column_name) AS max_col
FROM table_name;

-- Calculate the minimum value in a column using a window function
SELECT column_name,
MIN(column_name) OVER(PARTITION BY column_name) AS min_col
FROM table_name;

-- Calculate the average of values in a column using a window function
SELECT column_name,
AVG(column_name) OVER(PARTITION BY column_name) AS avg_col
FROM table_name;

-- Count the number of non-null values in a column using a window function
SELECT column_name,
COUNT(column_name) OVER(PARTITION BY column_name) AS count_col
FROM table_name;

-- Count the total number of rows in a table (including null values) using a window function
SELECT column_name,
COUNT(*) OVER(PARTITION BY column_name) AS count_star_col
FROM table_name;
```









