WITH CTE AS (
    SELECT r.user_id AS user1_id,
 r2.user_id AS user2_id ,
 COUNT(r.follower_id) AS cnt
FROM relations r 
JOIN relations r2
ON r.follower_id = r2.follower_id 
AND r.user_id <> r2.user_id
GROUP BY r.user_id, r2.user_id
ORDER BY cnt desc, user1_id
LIMIT 1
)
SELECT user1_id,user2_id
FROM CTE
