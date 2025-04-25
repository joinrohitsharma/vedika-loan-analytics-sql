-- Branch Performance vs. Defaults

USE vedika_microfinance;
SELECT 
  b.branch_id,
  b.branch_manager,
  COUNT(l.loan_id) AS total_loans,
  SUM(CASE WHEN l.status = 'defaulted' THEN 1 ELSE 0 END) AS defaulted_loans,
  SUM(l.loan_amount) AS total_disbursed,
  ROUND(SUM(CASE WHEN l.status = 'defaulted' THEN 1 ELSE 0 END) * 100.0 / COUNT(l.loan_id), 2) AS default_rate
FROM branches b
JOIN customers c ON b.state = c.state
JOIN loans l ON c.customer_id = l.customer_id
GROUP BY b.branch_id
HAVING total_disbursed > 500000 AND default_rate > 10;


SELECT 
  l.loan_id,
  c.name,
  l.disbursed_date,
  MIN(p.payment_date) AS first_payment_date,
  DATEDIFF(MIN(p.payment_date), l.disbursed_date) AS gap_days
FROM loans l
JOIN payments p ON l.loan_id = p.loan_id
JOIN customers c ON l.customer_id = c.customer_id
GROUP BY l.loan_id
HAVING gap_days <= 5;







