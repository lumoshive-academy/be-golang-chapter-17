-- query limit
SELECT * FROM users
LIMIT 5;

-- query limit with order by
SELECT * FROM users
ORDER BY age DESC
LIMIT 3;

-- query limit with offset
SELECT * FROM users
ORDER BY created_at DESC
LIMIT 5 OFFSET 10;

-- query distict
SELECT DISTINCT city
FROM users;

-- query distict with order by
SELECT DISTINCT city
FROM users
ORDER BY city ASC;

