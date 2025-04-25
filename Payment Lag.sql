 -- Window Functions - Payment Lag

SELECT loan_id, payment_date,
       amount_paid,
       LAG(payment_date) OVER (PARTITION BY loan_id ORDER BY payment_date) AS previous_payment,
       DATEDIFF(payment_date, LAG(payment_date) OVER (PARTITION BY loan_id ORDER BY payment_date)) AS days_between
FROM payments;
