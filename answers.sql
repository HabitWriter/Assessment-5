-- Problem 1
SELECT email FROM customers;

-- Problem 2
SELECT id FROM orders WHERE customer_id = 1;

-- Problem 3
SELECT SUM(num_cupcakes) FROM orders WHERE processed = false;

-- Problem 4
SELECT name, SUM(num_cupcakes) as sum FROM cupcakes AS c LEFT JOIN orders AS o ON (c.id=o.cupcake_id) GROUP BY name ORDER BY name;

-- Problem 5
SELECT email, SUM(num_cupcakes) as total FROM customers as cu JOIN orders as o ON (cu.id=o.customer_id) GROUP BY email ORDER BY total DESC;

-- Problem 6
SELECT DISTINCT fname, lname, email FROM customers AS cu JOIN orders AS o ON (cu.id=o.customer_id) WHERE cupcake_id = 5 AND processed = true;