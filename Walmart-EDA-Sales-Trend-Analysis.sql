SELECT *
FROM walmart;

--
SELECT COUNT(*)
FROM walmart;

DROP TABLE walmart
--

SELECT 
payment_method,
COUNT(*) as Total_transaction
FROM walmart
GROUP BY payment_method;

--
SELECT COUNT(
DISTINCT branch)
FROM walmart;


---
SELECT max(quantity) FROM walmart;
SELECT min(quantity) FROM walmart;

                                   -- Business Problems

-- Finding different payment methods and number of transaction and number of quantities sold?
SELECT payment_method,
COUNT(*) AS No_of_Payments,
SUM(quantity) AS No_of_Qty_Sold
FROM walmart
GROUP BY payment_method

-- Identifying the highest rated category in each branch, category 
-- average rating

SELECT *
FROM (
SELECT 
branch,
category, AVG(rating) as avg_rating,
RANK()OVER(PARTITION BY branch ORDER BY AVG(rating)DESC) AS rank
FROM walmart
GROUP BY 1,2
ORDER BY 1,3 DESC
)
WHERE rank = 1

-- Identifying the busiest day for each branch based on number of transactions ?

SELECT *
FROM 
 (
  select 
branch,
To_char(to_date(date,'DD/MM/YY'), 'Day')as day_name,
count(*) as no_transactions,
RANK() OVER(PARTITION BY branch ORDER BY COUNT(*)DESC) as rank
from walmart
group by 1,2
 )
WHERE RANK = 1


-- Calculate the total quantity of items sold per payment method. List payment method and total quantity

SELECT payment_method,
-- COUNT(*) AS No_of_Payments,
SUM(quantity) AS No_of_Qty_Sold
FROM walmart
GROUP BY payment_method

-- Determine the average minimum and maximum rating of product for each city
-- List the city average rating min rating and max rating ?

SELECT
 city,
 category,
 MIN(rating) AS min_rating,
 MAX(rating) AS max_rating,
 AVG(rating) AS avg_rating
FROM walmart
GROUP BY city,category;

-- Describe the most common payment method for each branch
-- Display branch and the preferred payment method

WITH cte
AS
(SELECT 
   branch,
   payment_method,
   COUNT(*) as total_transaction,
   RANK() OVER(PARTITION BY branch ORDER BY COUNT(*)DESC) AS rank
FROM walmart
GROUP by 1,2)
SELECT *
FROM cte
WHERE rank = 1

-- Categorise sales into three groups afternoon and evening
-- Find out each of the shift and number of invoices

SELECT 
branch,
  CASE
   WHEN EXTRACT (HOUR FROM(time::time)) < 12 then 'Morning'
   WHEN EXTRACT (HOUR FROM (time::time)) BETWEEN 12 and 17 THEN 'Afternoon'
   ELSE 'Evening'
   END day_time,
   count(*)
FROM walmart
GROUP BY 1,2
ORDER BY 1,3 DESC


-- Identifying five branch with highest decreasing ratio in revenue compared to last year. Current year's 2023 and last year's 2022
-- RDratio == last_rev- cr_rev / ls_rev*100

-- 2022 sales
WITH revenue_2022 AS (
    SELECT 
        branch,
        SUM(total) AS revenue
    FROM walmart
    WHERE EXTRACT(YEAR FROM TO_DATE(date, 'DD/MM/YY')) = 2022
    GROUP BY 1
),
-- 2023 sales
revenue_2023 AS (
    SELECT 
        branch,
        SUM(total) AS revenue
    FROM walmart
    WHERE EXTRACT(YEAR FROM TO_DATE(date, 'DD/MM/YY')) = 2023
    GROUP BY 1
)

SELECT 
    ls.branch,
    ls.revenue AS Last_Year_2022_sales_revenue,
    cs.revenue AS Current_Year_2023_sales_revenue,
	ROUND(
(
ls.revenue - cs.revenue
)::numeric/ ls.revenue::numeric * 100,2
	) as rev_dec_ratio
FROM revenue_2022 AS ls
JOIN revenue_2023 AS cs
ON ls.branch = cs.branch
WHERE ls.revenue > cs.revenue
ORDER BY rev_dec_ratio DESC
LIMIT 5;

