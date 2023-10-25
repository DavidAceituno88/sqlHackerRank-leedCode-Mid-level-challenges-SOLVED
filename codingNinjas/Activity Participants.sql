WITH CTE AS(
    SELECT COUNT(id) as cnt, activity
    FROM Friends
    GROUP BY activity
),
CTE1 AS(
    SELECT activity
    FROM CTE
    ORDER BY cnt DESC
    LIMIT 1
),
CTE2 AS(
    SELECT activity
    FROM CTE
    ORDER BY cnt ASC
    LIMIT 1
)

SELECT f.activity
FROM Friends f 
WHERE activity NOT IN (SELECT activity FROM CTE1)
AND activity NOT IN(SELECT activity FROM CTE2)
GROUP BY activity
