-- CTEs Top 10 Repayers

WITH repayment_total AS (
  SELECT c.customer_id, c.name, SUM(p.amount_paid) AS total_paid
  FROM customers c
  JOIN loans l ON c.customer_id = l.customer_id
  JOIN payments p ON l.loan_id = p.loan_id
  GROUP BY c.customer_id
)
SELECT * FROM repayment_total ORDER BY total_paid DESC LIMIT 10;



