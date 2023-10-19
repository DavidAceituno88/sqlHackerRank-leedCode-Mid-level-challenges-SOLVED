SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN 
(SELECT empid, CASE WHEN bonus < 1000 THEN bonus
 ELSE null    END AS bonus
        FROM Bonus) b 
ON  b.empid = e.empid
ORDER BY e.empid
