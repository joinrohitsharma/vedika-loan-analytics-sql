-- Monthly Product Sales Trend


SELECT 
  MONTH(sale_date) AS sale_month,
  product_name,
  COUNT(*) AS units_sold
FROM cross_sales
GROUP BY MONTH(sale_date), product_name
ORDER BY sale_month, units_sold DESC;

SELECT DISTINCT c.customer_id, c.name, c.state
FROM customers c
JOIN cross_sales cs ON c.customer_id = cs.customer_id
WHERE c.customer_id NOT IN (
  SELECT customer_id FROM loans WHERE status = 'active'
);


SELECT 
  c.customer_id,
  c.name,
  MAX(p.payment_date) AS last_payment,
  DATEDIFF(CURDATE(), MAX(p.payment_date)) AS days_overdue,
  RANK() OVER (ORDER BY DATEDIFF(CURDATE(), MAX(p.payment_date)) DESC) AS risk_rank
FROM customers c
JOIN loans l ON c.customer_id = l.customer_id
JOIN payments p ON l.loan_id = p.loan_id
GROUP BY c.customer_id
ORDER BY risk_rank
LIMIT 10;

