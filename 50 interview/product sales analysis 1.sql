/* Write your T-SQL query statement below */
SELECT p.product_name, s.year, s.price 
FROM Product p
JOIN sales s
ON p.product_id = s.product_id
