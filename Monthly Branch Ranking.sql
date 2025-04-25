-- Window Functions - Monthly Branch Ranking
SELECT branch_id, MONTH(disbursed_date) AS month,
       SUM(loan_amount) AS total_disbursed,
       RANK() OVER (PARTITION BY MONTH(disbursed_date) ORDER BY SUM(loan_amount) DESC) AS rank_in_month
FROM loans l
JOIN customers c ON l.customer_id = c.customer_id
JOIN branches b ON c.state = b.state
GROUP BY branch_id, MONTH(disbursed_date);

SELECT loan_id, payment_date,
       amount_paid,
       LAG(payment_date) OVER (PARTITION BY loan_id ORDER BY payment_date) AS previous_payment,
       DATEDIFF(payment_date, LAG(payment_date) OVER (PARTITION BY loan_id ORDER BY payment_date)) AS days_between
FROM payments;





