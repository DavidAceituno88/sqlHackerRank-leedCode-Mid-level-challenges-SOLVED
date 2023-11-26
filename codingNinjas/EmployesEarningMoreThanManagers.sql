SELECT e.name AS Employee
FROM Employee e 
JOIN Employee m 
ON m.id = e.managerid 
WHERE m.salary < e.salary
