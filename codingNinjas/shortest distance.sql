WITH CTE AS (    
    SELECT CASE WHEN p.x < 0 THEN p.x * -1
    ELSE p.x END AS x1,
    CASE WHEN p1.x < 0 THEN p1.x * -1
    ELSE p1.x END AS x2
    FROM point p
    CROSS JOIN point p1
)
SELECT CASE WHEN x1 > x2 THEN x1 - x2
ELSE x2 - x1 
END AS shortest
FROM CTE
WHERE x1 - x2 > 0
LIMIT 1
