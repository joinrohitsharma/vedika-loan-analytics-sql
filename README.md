# vedika-loan-analytics-sql
Advanced SQL &amp; Power BI project focused on loan performance optimization and customer engagement analysis for Vedika Micro Finance. Built using MySQL Workbench.


# 📊 Data-Driven Optimization of Loan Performance & Customer Engagement at Vedika Micro Finance
> Advanced SQL + Data Analysis + Power BI | MBA Project | MySQL Workbench ---

## 🏢 About the Project
This project focuses on analyzing customer behavior, loan performance, delinquency, and cross-sale data for **Vedika Micro Finance** using **MySQL Workbench** and **Power BI**. The goal is to help the company make smarter decisions around collections, cross-sell strategies, and customer engagement.---


## 🎯 Objective

To optimize loan collections and increase customer engagement by:
- Identifying high-risk customers
- Improving branch-level performance insights
- Understanding cross-sale success



 Problem Statements (Increasing Difficulty):
 
🟢 Level 1 – Basic Joins & Aggregations
- List all customers with their total loan amount and number of loans taken.
- Find states with the highest number of active customers.

🔵 Level 2 – Subqueries & Case Statements
- Find customers who have paid more than 80% of their total loan amount.
- Categorize customers into 'High Risk', 'Medium Risk', 'Low Risk' based on loan default history using a CASE statement.
- Find the average time (in days) between loan disbursement and first payment.

🟡 Level 3 – CTEs & Nested Analysis
- Using CTE, find the top 10 customers by total repayment across all loans.
- Identify branches with >25% of customers having at least one defaulted loan.

🔴 Level 4 – Window Functions & Trend Analysis
- Use RANK() to list top-performing branches by total disbursed amount monthly.
- Calculate moving average of payment collection per month using OVER(PARTITION BY ...).
- For each customer, calculate the number of days between each successive payment (LAG()).

⚫ Level 5 – Real-Life Business Case
- Recommend cross-sale product bundling strategies by identifying:
- Products frequently bought with new loan disbursements.
- High cross-sales revenue states.
- Build a delinquency risk model:
- Flag customers with more than 2 missed payments.
- Prioritize by loan amount + customer history.

⚫ Level 6 –  Problem 1: Branch Performance vs. Defaults
-   Which branches have disbursed more than ₹5,00,000 in loans but also have a loan default rate above 10%?

🔴 Level 7 – Early Payers Insights
- Identify customers who made their first payment within 5 days of disbursement. List loan_id, name, disbursed_date, first_payment_date, and gap in days

🟡 Level 8 - Monthly Product Sales Trend
- Which cross-sale products are trending by month? List month, product_name, and total units sold.

🟡 Level 9 - Inactive but Cross-Sold Customers
- Find customers who have bought cross-sale products but have no active loans.

🟡 Level 10 - Overdue Risk Ranking
📌 Rank all customers by number of days since their last payment (higher = riskier). Show top 10.


## 🗃️ Dataset Overview:
- `customers.csv`: Personal data
- `loans.csv`: Loan details
- `payments.csv`: Transaction history
- `cross_sales.csv`: Cross-sold product data
- `branches.csv`: Branch operations

## 💻 Technologies Used:
- MySQL Workbench
- SQL (CTEs, Joins, Subqueries, Window Functions)
- Excel / Power BI (optional for visuals)

## 📁 Files Included:

### `SQL_Scripts/`
- All database creation and advanced queries.

### `Data/`
- CSVs for importing via MySQL Workbench.

### `Reports/`
- Final PDF Report
- Presentation slides with insights & strategy

## 📸 Screenshots:
Query outputs and dashboards for visual proof.


## 🔚 Final Output:
Strategic insights for Vedika to:
- Improve collection efficiency
- Cross-sell smarter
- Predict delinquencies
- Empower data-driven decision-making


## 📄 License:
MIT License (Free to use with credit)




