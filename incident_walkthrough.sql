-- SESSION 1
BEGIN;
UPDATE orders SET amount = 999 WHERE order_id = 1;

-- DO NOT COMMIT

-- SESSION 2
UPDATE orders SET amount = 500 WHERE order_id = 1;

-- This will block

-- Check blocking
SELECT * FROM pg_stat_activity;

-- Fix it
-- Go back to session 1:
ROLLBACK;
