SELECT employee_id, name, salary, 
DENSE_RANK() OVER(ORDER BY salary) AS team_id
FROM Employees e
WHERE EXISTS (SELECT * FROM 
Employees e1 WHERE e.employee_id <> e1.employee_id
AND e.salary = e1.salary)
ORDER BY team_id , employee_id
