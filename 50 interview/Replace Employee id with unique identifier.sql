/* Write your T-SQL query statement below */
SELECT e.unique_id, em.name
FROM EmployeeUNI e
RIGHT JOIN Employees em
ON e.id = em.id
