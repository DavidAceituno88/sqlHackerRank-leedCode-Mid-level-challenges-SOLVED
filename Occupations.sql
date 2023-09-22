WITH CTE AS(
  SELECT ROW_NUMBER OVER(PARTITION BY occupation ORDER BY name) AS rn,*
  FROM OCCUPATIONS
  )
SELECT doctor,professor,singer,actor
FROM CTE PIVOT(MAX(name) FOR occupations IN(Doctor,Professor,Singer,Actor));
