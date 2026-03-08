# Bank Risk Analytics: Customer Financial Risk & Exposure Dashboard

A data-driven analytics project designed to evaluate bank customer financial behavior, credit exposure, and risk levels using SQL and Python. The project analyzes banking datasets to uncover patterns in loans, deposits, credit usage, and customer assets, helping identify high-risk borrowers and high-value clients.

## Short Description / Purpose

The Bank Risk Analytics Dashboard is an analytical project that examines customer financial data to assess credit risk, financial stability, and banking exposure. By combining SQL-based analysis with Python data exploration, the project helps simulate how banks monitor borrower risk and identify profitable customer segments.

This project is designed for banking analytics, risk management insights, and financial decision-making simulations.

## Tech Stack

The project was built using the following tools and technologies:

•  SQL (MySQL / PostgreSQL) – Used for data querying, financial analysis, and risk segmentation.
•  Python – Used for exploratory data analysis and financial metric calculations.
•  Pandas – Data cleaning, transformation, and aggregation.
•  Matplotlib / Seaborn – Data visualization and trend analysis.
•  File Formats – CSV dataset, SQL scripts, Jupyter Notebook (.ipynb).

## Data Source

Source: Simulated banking dataset used for financial risk analysis.

The dataset contains customer-level banking information, including:

• Customer demographics (age, nationality, occupation)
• Banking relationship details (loyalty classification, fee structure)
• Income and savings data
• Loan and credit card balances
• Deposit and account balances
• Business lending exposure
• Risk weighting indicators

These features allow analysis of customer financial health, borrowing patterns, and bank exposure to credit risk.

## Features / Highlights
## Business Problem

Banks handle large volumes of customer financial data but need effective ways to quickly identify:

High-risk borrowers

Customers with excessive credit exposure

Financially stable clients

High-value customers generating bank revenue

Without proper analytics, it becomes difficult to detect credit risk early and optimize lending strategies.

## Goal of the Project

The objective of this project is to build an analytical framework for banking risk evaluation that:

• Identifies high-risk customers based on financial ratios
• Measures loan exposure and financial stability
• Detects high-value clients for premium banking services
• Demonstrates how banks can apply data analytics to credit risk management

## Walkthrough of Key Analysis
Key Financial Metrics

The project calculates important banking risk indicators such as:

• Loan-to-Income Ratio – Measures customer debt burden
• Deposit-to-Loan Ratio – Evaluates liquidity strength
• Credit Exposure – Total financial liability from loans and credit cards
• Estimated Net Worth – Customer financial stability indicator
• Customer Lifetime Value (CLV) – Estimated bank revenue potential

Customer Risk Segmentation

Customers are categorized into risk groups:

• High Risk – Loans exceed income or deposits
• Medium Risk – Moderate borrowing relative to income
• Low Risk – Strong financial stability with higher assets

This segmentation helps banks prioritize monitoring and lending decisions.

Credit Exposure Analysis

SQL queries identify customers with the largest financial exposure, including:

Large bank loans

High credit card balances

Significant business lending

This helps simulate how banks track credit portfolio risk.

Wealth Ranking (Window Functions)

Advanced SQL window functions rank customers based on total financial assets, allowing identification of high-net-worth individuals (HNWIs).

These clients are typically targeted for:

investment services

wealth management

premium banking products

## Business Impact & Insights

Key insights derived from the analysis include:

Risk Detection
Customers with high loan-to-income ratios show greater probability of financial stress.

Financial Stability Assessment
Clients with strong deposit balances and savings accounts demonstrate lower credit risk.

High Value Client Identification
Customers with large business lending and deposits generate higher banking value.

Credit Exposure Monitoring
Identifying clients with large loan portfolios helps banks manage financial risk proactively.
