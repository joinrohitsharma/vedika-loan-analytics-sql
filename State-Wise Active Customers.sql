-- State-Wise Active Customers

SELECT state, COUNT(*) AS active_customers
FROM customers c
JOIN loans l ON c.customer_id = l.customer_id
WHERE l.status = 'active'
GROUP BY state;
