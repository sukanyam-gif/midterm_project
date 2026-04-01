-- JOIN
SELECT u.name, o.amount
FROM users u
JOIN orders o ON u.user_id = o.user_id;

-- JOIN 2
SELECT * FROM orders o JOIN users u ON o.user_id = u.user_id;

-- GROUP BY
SELECT user_id, SUM(amount) FROM orders GROUP BY user_id;

-- SUBQUERY
SELECT name FROM users WHERE user_id IN
(SELECT user_id FROM orders WHERE amount > 100);

-- CTE
WITH big_orders AS (
    SELECT * FROM orders WHERE amount > 100
)
SELECT * FROM big_orders;

-- VIEW
CREATE VIEW user_totals AS
SELECT user_id, SUM(amount) total FROM orders GROUP BY user_id;

SELECT * FROM user_totals;
