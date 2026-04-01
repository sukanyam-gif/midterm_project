-- Add constraint: email must be unique
ALTER TABLE users
ADD CONSTRAINT unique_email UNIQUE (email);

-- Add check: amount must be positive
ALTER TABLE orders
ADD CONSTRAINT check_amount CHECK (amount > 0);

-- Create a view for total spending
CREATE VIEW user_totals AS
SELECT user_id, SUM(amount) AS total_spent
FROM orders
GROUP BY user_id;
