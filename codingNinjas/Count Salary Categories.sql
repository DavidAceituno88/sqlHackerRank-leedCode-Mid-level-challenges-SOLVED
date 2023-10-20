WITH CTE AS(
    SELECT COUNT(income) AS accounts_count
    FROM Accounts
    WHERE income < 20000
),
CTE2 AS(
    SELECT COUNT(income) AS accounts_count
    FROM Accounts
WHERE income BETWEEN 20000 AND 50000
),
CTE3 AS(
    SELECT COUNT(income) AS accounts_count
    FROM Accounts
WHERE income > 2000
)
SELECT 'Low Salary' AS category,
accounts_count FROM CTE 
UNION
SELECT 'Average Salary' AS category,
accounts_count FROM CTE2 
UNION
SELECT 'High Salary' AS category,
accounts_count FROM CTE3 
