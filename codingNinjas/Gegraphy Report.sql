WITH CTE AS(
SELECT ROW_NUMBER() OVER(ORDER BY name) AS id,
name
FROM student 
WHERE continent like 'America'
),
CTE1 AS(
SELECT ROW_NUMBER() OVER(ORDER BY name) AS id,
name
FROM student 
WHERE continent like 'Asia'
),
CTE2 AS(
SELECT ROW_NUMBER() OVER(ORDER BY name) AS id,
name
FROM student 
WHERE continent like 'Europe'
)
SELECT c.name AS America,
c1.name AS Asia,
c2.name AS Europe
FROM
CTE c 
FULL JOIN CTE1 c1 ON c.id = c1.id
FULL JOIN CTE2 c2 ON c1.id = c2.id

-------------------------------------------------------------------------
SELECT MAX(CASE WHEN continent = 'America' THEN name END )AS America, 
MAX(CASE WHEN continent = 'Asia' THEN name END )AS Asia, 
MAX(CASE WHEN continent = 'Europe' THEN name END )AS Europe 
FROM (SELECT *, ROW_NUMBER()OVER(PARTITION BY continent ORDER BY name) AS row_id
 FROM student) AS t GROUP BY row_id
