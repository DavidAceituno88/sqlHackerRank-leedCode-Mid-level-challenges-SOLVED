SELECT s.name
FROM FRIENDS f JOIN STUDENTS s 
ON f.ID = s.ID 
JOIN PACKAGES p 
ON s.ID = p.ID
WHERE p.salary < (SELECT p.salary FROM packages p WHERE f.friend_id = p.id)
ORDER BY (SELECT p.salary FROM packages p WHERE f.friend_id = p.id);
