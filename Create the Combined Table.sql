-- Create combined table: vedika_full_data
CREATE TABLE vedika_full_data AS
SELECT 
    c.customer_id,
    c.name AS customer_name,
    c.age,
    c.gender,
    c.state AS customer_state,
    c.join_date,

    l.loan_id,
    l.loan_amount,
    l.interest_rate,
    l.tenure_months,
    l.disbursed_date,
    l.status AS loan_status,
    l.loan_type,

    p.payment_id,
    p.payment_date,
    p.amount_paid,

    cs.sale_id,
    cs.product_name,
    cs.price AS product_price,
    cs.sale_date,
    cs.linked_to_loan,

    b.branch_id,
    b.branch_manager,
    b.customers_covered

FROM customers c
LEFT JOIN loans l ON c.customer_id = l.customer_id
LEFT JOIN payments p ON l.loan_id = p.loan_id
LEFT JOIN cross_sales cs ON c.customer_id = cs.customer_id
LEFT JOIN branches b ON c.state = b.state;
