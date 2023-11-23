SELECT customer_id
FROM customer
GROUP BY customer_id 
HAVING COUNT(distinct product_key) = 
(SELECT COUNT(distinct product_key) FROM
PRODUCT)
