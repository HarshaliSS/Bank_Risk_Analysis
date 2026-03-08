create database bank_risk_analysis;
use bank_risk_analysis;
show tables;
describe bank_clients;
select * from bank_clients;

-- Exploratory Data Analysis

-- Total Customers
SELECT COUNT(*) AS total_customers
FROM bank_clients;

-- Average Customer Income
SELECT round(AVG(estimated_income),2) AS avg_income
FROM bank_clients;

-- Total Loans Issued by Bank
SELECT round(SUM(bank_loans),2) AS total_loans
FROM bank_clients;

-- Risk Analysis
-- Customers with Highest Loan Risk
SELECT name,
bank_loans,
bank_deposits,
(bank_loans - bank_deposits) AS risk_exposure
FROM bank_clients
ORDER BY risk_exposure DESC;

-- High Credit Card Debt Customers
SELECT name, credit_card_balance
FROM bank_clients
ORDER BY credit_card_balance DESC
LIMIT 10;

-- Customers with Loans Higher Than Income
SELECT name, estimated_income, bank_loans
FROM bank_clients
WHERE bank_loans > estimated_income;

-- Customer Segmentation
SELECT loyalty_classification,
COUNT(*) AS total_customers,
AVG(estimated_income) AS avg_income
FROM bank_clients
GROUP BY loyalty_classification;

-- Loan Distribution by Occupation
SELECT occupation,
SUM(bank_loans) AS total_loans
FROM bank_clients
GROUP BY occupation
ORDER BY total_loans DESC;

-- Risk Score Categorization
SELECT name,
bank_loans,
bank_deposits,
CASE
WHEN bank_loans > bank_deposits THEN 'High Risk'
WHEN bank_loans = bank_deposits THEN 'Medium Risk'
ELSE 'Low Risk'
END AS risk_category
FROM bank_clients;

-- Loan-to-Income Ratio (Credit Risk Indicator)
SELECT 
name,
estimated_income,
bank_loans,
ROUND(bank_loans / estimated_income,2) AS loan_to_income_ratio
FROM bank_clients
ORDER BY loan_to_income_ratio DESC;

-- Customer Net Worth Estimation
SELECT 
name,
(bank_deposits + saving_accounts + checking_accounts + superannuation_savings) 
- bank_loans AS estimated_net_worth
FROM bank_clients
ORDER BY estimated_net_worth DESC;

-- Credit Utilization Ratio
SELECT 
name,
credit_cards,
credit_card_balance,
ROUND(credit_card_balance / credit_cards,2) AS avg_credit_usage
FROM bank_clients
ORDER BY avg_credit_usage DESC;

-- High Risk Clients with Multiple Risk Factors
SELECT 
name,
estimated_income,
bank_loans,
credit_card_balance,
bank_deposits
FROM bank_clients
WHERE bank_loans > estimated_income
AND credit_card_balance > 3000
AND bank_deposits < bank_loans;

-- Customer Profitability for the Bank
SELECT 
name,
(bank_loans * 0.08 + credit_card_balance * 0.18 + business_lending * 0.1) 
AS estimated_bank_profit
FROM bank_clients
ORDER BY estimated_bank_profit DESC;

-- Loan Exposure by Occupation
SELECT 
occupation,
AVG(bank_loans) AS avg_loans,
AVG(estimated_income) AS avg_income
FROM bank_clients
GROUP BY occupation
ORDER BY avg_loans DESC;

-- composite risk score.
SELECT 
name,
(
(bank_loans / estimated_income) +
(credit_card_balance / 5000) -
(bank_deposits / 1000000)
) AS risk_score
FROM bank_clients
ORDER BY risk_score DESC;

-- Customer Lifetime Value (CLV) Analysis
SELECT 
name,
estimated_income,
bank_loans,
credit_card_balance,
business_lending,
(bank_loans * 0.07 + credit_card_balance * 0.15 + business_lending * 0.1) 
AS customer_lifetime_value
FROM bank_clients
ORDER BY customer_lifetime_value DESC;

-- Top Customers by Financial Exposure
SELECT 
name,
bank_loans,
bank_deposits,
RANK() OVER (ORDER BY bank_loans DESC) AS loan_rank
FROM bank_clients;

