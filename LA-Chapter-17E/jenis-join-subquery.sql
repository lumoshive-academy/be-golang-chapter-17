-- exampel inner join
SELECT customers.name, customers.phone, customers.email, orders.amount, orders.order_datetime
FROM customers
INNER JOIN orders ON customers.id = orders.customer_id;

-- exampel left join
SELECT customers.id AS customer_id, customers.name, customers.phone, customers.email, orders.amount, orders.order_datetime
FROM customers
LEFT JOIN orders ON customers.id = orders.customer_id;

-- example right join
SELECT customers.id AS customer_id, customers.name, customers.phone, customers.email, orders.amount, orders.order_datetime
FROM customers
RIGHT JOIN orders ON customers.id = orders.customer_id;

-- example full join
SELECT customers.name, customers.phone, customers.email, orders.amount, orders.order_datetime
FROM customers
FULL JOIN orders ON customers.id = orders.customer_id;

-- example subquery select
SELECT 
    c.id, 
    c.name, 
    (SELECT SUM(o.amount) 
     FROM orders o 
     WHERE o.customer_id = c.id) AS total_amount
FROM customers c;

-- example subquery from
SELECT 
    sub.customer_id, 
    sub.total_amount
FROM (
    SELECT 
        o.customer_id, 
        SUM(o.amount) AS total_amount
    FROM orders o
    GROUP BY o.customer_id
) sub
ORDER BY sub.total_amount DESC;

-- example subquery where
SELECT 
    c.id, 
    c.name
FROM customers c
WHERE c.id IN (
    SELECT 
        o.customer_id
    FROM orders o
    WHERE o.amount > 500000
);



