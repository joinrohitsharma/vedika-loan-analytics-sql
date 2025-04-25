-- Risk Tagging

SELECT 
  c.customer_id, 
  c.name,
  CASE 
    WHEN SUM(CASE WHEN l.status = 'defaulted' THEN 1 ELSE 0 END) >= 2 THEN 'High Risk'
    WHEN SUM(CASE WHEN l.status = 'defaulted' THEN 1 ELSE 0 END) = 1 THEN 'Medium Risk'
    ELSE 'Low Risk'
  END AS risk_level
FROM customers c
JOIN loans l ON c.customer_id = l.customer_id
GROUP BY c.customer_id, c.name;


