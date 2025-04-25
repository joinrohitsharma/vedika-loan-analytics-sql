-- Subqueries & Case - Customers Paid >80% of Loan

SELECT c.customer_id, c.name
FROM customers c
WHERE EXISTS (
  SELECT 1
  FROM loans l
  JOIN payments p ON l.loan_id = p.loan_id
  WHERE l.customer_id = c.customer_id
  GROUP BY l.loan_id, l.loan_amount
  HAVING SUM(p.amount_paid) >= 0.8 * l.loan_amount
);

