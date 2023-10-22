SELECT e.name AS Employee
FROM Employee e
JOIN Employee e1
ON e.managerid = e1.id 
WHERE e.salary > e1.salary
