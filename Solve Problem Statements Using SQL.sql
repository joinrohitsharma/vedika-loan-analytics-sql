-- Customer Loan Summary

USE vedika_microfinance;
SELECT 
    c.customer_id,
    c.name,
    COUNT(l.loan_id) AS loan_count,
    SUM(l.loan_amount) AS total_loan
FROM
    customers c
        JOIN
    loans l ON c.customer_id = l.customer_id
GROUP BY c.customer_id;


