WITH PARENTS AS (
    SELECT sub_id
    FROM submissions
    WHERE parent_id IS NULL
    GROUP BY sub_id
)
,CTE AS(
    SELECT sub_id, parent_id
    FROM submissions
    GROUP BY sub_id, parent_id
)

SELECT p.sub_id AS post_id ,COUNT(s.sub_id) AS number_of_comments
FROM CTE s 
RIGHT JOIN PARENTS p
ON s.parent_id = p.sub_id
GROUP BY p.sub_id
