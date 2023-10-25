WITH CTE AS(
    SELECT COUNT(id) as cnt, activity
    FROM Friends
    GROUP BY activity
)
SELECT activity
FROM Friends  
GROUP BY activity
HAVING COUNT(id) < (SELECT MAX(cnt) FROM CTE)
AND COUNT(id) > (SELECT MIN(cnt) FROM CTE)
