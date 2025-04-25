-- Real Business Problems  Product Bundling Analysis

SELECT product_name, COUNT(*) AS sales_count
FROM cross_sales
WHERE linked_to_loan = TRUE
GROUP BY product_name
ORDER BY sales_count DESC;


SELECT l.customer_id, c.name,
       COUNT(p.payment_id) AS total_payments,
       DATEDIFF(CURDATE(), MAX(p.payment_date)) AS days_since_last_payment,
       CASE 
         WHEN DATEDIFF(CURDATE(), MAX(p.payment_date)) > 60 THEN 'High Risk'
         ELSE 'Low Risk'
       END AS delinquency_risk
FROM loans l
JOIN payments p ON l.loan_id = p.loan_id
JOIN customers c ON l.customer_id = c.customer_id
GROUP BY l.customer_id;


