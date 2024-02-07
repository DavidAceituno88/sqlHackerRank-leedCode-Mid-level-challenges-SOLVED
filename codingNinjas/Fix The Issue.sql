SELECT LOWER(TRIM(product_name)) AS product_name, 
SUBSTRING(CAST(sale_date AS VARCHAR(10)),1,7) AS sale_date, 
COUNT(sale_id) AS total FROM Sales 
GROUP BY LOWER(TRIM(product_name)),
SUBSTRING(CAST(sale_date AS VARCHAR(10)),1,7) ORDER BY 1,2 ASC
