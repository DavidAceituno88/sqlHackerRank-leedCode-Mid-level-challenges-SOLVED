WITH CTE AS(
    SELECT duration/60 as mins
    FROM Sessions
),
CTE2 AS(
    SELECT COUNT(CASE WHEN mins BETWEEN 0 AND 5 
    THEN 1 END) AS first,
    COUNT(CASE WHEN mins BETWEEN 5 AND 10 
    THEN 1 END) AS second,
    COUNT(CASE WHEN mins BETWEEN 10 AND 15 
    THEN 1 END) AS third,
    COUNT(CASE WHEN mins >=15 THEN 1 END) AS fourth
    FROM CTE
)
SELECT '[0-5>' AS bin,first AS total
FROM CTE2 
UNION 
SELECT '[5-10>' AS bin,second AS total
FROM CTE2 
UNION 
SELECT '[10-15>' AS bin,third AS total
FROM CTE2 
UNION  
SELECT '15 or more' AS bin,fourth AS total
FROM CTE2 
