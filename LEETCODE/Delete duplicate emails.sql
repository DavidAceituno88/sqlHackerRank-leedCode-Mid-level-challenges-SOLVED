WITH CTE AS(
    SELECT id,email, RANK() OVER(PARTITION BY email
ORDER BY id) AS rnk
FROM Person
)

DELETE FROM Person
WHERE id in (SELECT id FROM CTE WHERE rnk = 2);

SELECT * FROM Person
