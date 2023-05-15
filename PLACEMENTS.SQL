SELECT s.name
FROM FRIENDS f JOIN STUDENTS s 
ON f.ID = s.ID 
JOIN PACKAGES p 
ON s.ID = p.ID
WHERE p.salary < (SELECT p.salary FROM packages p WHERE f.friend_id = p.id)
ORDER BY (SELECT p.salary FROM packages p WHERE f.friend_id = p.id);


/*CTE VERSION*/

/* GET MY FRIEND ID AND SALARY*/
WITH CTE AS(
SELECT f.id as id, friend_id, salary
FROM friends f
JOIN packages p
ON f.friend_id = p.id
)
SELECT name
FROM students s
JOIN packages p 
ON s.id = p.id
JOIN CTE c
ON p.id = c.id
WHERE p.salary < c.salary
ORDER BY c.salary;
