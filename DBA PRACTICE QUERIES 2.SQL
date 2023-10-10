CREATE TABLE [AdventureWorks2022].[sales].[visits](
visit_id INT PRIMARY KEY IDENTITY (1,1),
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
visited_at DATETIME,
phone VARCHAR(20),
store_id INT NOT NULL,
FOREIGN KEY (store_id) REFERENCES sales.storeNew(store_id)
);

CREATE TABLE [AdventureWorks2022].[sales].[storeNew](
store_id INT PRIMARY KEY IDENTITY (1,1),
sales INT
)

SELECT *
FROM [AdventureWorks2022].[sales].visits

SELECT BusinessEntityId,FirstName,lastName, Title
INTO #tempTable
FROM [AdventureWorks2022].[Person].[person]
WHERE title = 'mr.'

SELECT * 
FROM #tempTable
