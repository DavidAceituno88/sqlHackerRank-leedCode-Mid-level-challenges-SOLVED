WITH CTE AS (
  SELECT DENSE_RANK() OVER(PARTITION BY e.departmentId ORDER BY e.salary DESC) AS rnk,
d.name AS Department, e.name AS Employee , e.salary AS Salary 
FROM Employee e
JOIN Department d 
ON e.departmentid = d.id
)
SELECT Department, Employee, Salary
FROM CTE
WHERE rnk < 4;
