WITH CTE AS(
SELECT count(*) AS cnt, s.hacker_id AS hacker_id
FROM Challenges c
JOIN Submissions s
ON s.challenge_id = c.challenge_id 
JOIN Difficulty d
ON c.difficulty_level = d.difficulty_level
WHERE s.score = d.score
GROUP BY s.hacker_id
HAVING COUNT(*)> 1
)
SELECT c.hacker_id, h.name
FROM CTE C
JOIN Hackers h 
ON c.hacker_id = h.hacker_id
ORDER BY cnt DESC, c.hacker_id
