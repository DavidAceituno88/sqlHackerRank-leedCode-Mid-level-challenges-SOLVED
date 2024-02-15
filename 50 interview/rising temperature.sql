/* Write your T-SQL query statement below */
WITH CTE AS(
    SELECT id, temperature,LAG(temperature) OVER(ORDER BY id) AS pas_temp
    FROM WEATHER
)
SELECT id
FROM CTE
WHERE temperature > pas_temp
