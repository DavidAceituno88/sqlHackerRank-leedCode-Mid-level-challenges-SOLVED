/* Write your T-SQL query statement below */
SELECT product_id
FROM Products
WHERE low_fats LIKE 'Y'
AND recyclable LIKE 'Y'
