-- Branch Default Analysis

WITH default_customers AS (
  SELECT l.customer_id, b.branch_id
  FROM loans l
  JOIN customers c ON l.customer_id = c.customer_id
  JOIN branches b ON c.state = b.state
  WHERE l.status = 'defaulted'
)
SELECT branch_id, COUNT(DISTINCT customer_id) AS defaulters
FROM default_customers
GROUP BY branch_id
HAVING COUNT(DISTINCT customer_id) > 25;

