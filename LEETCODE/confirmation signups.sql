SELECT s.user_id,
CAST(SUM(CASE WHEN action = 'confirmed'
THEN 1.0 ELSE 0.0 END)/COUNT(s.user_id) AS DECIMAL(5,2)) 
AS confirmation_rate
FROM confirmations c
RIGHT JOIN signups s
ON c.user_id = s.user_id
GROuP BY s.user_id

SELECT s.user_id, 
ROUND(AVG(CASE WHEN action_value 
= 'confirmed' THEN 1.00 ELSE 0.00 END),2) 
AS confirmation_rate FROM Signups s 
LEFT JOIN Confirmations c 
ON s.user_id = c.user_id 
GROUP BY s.user_id
