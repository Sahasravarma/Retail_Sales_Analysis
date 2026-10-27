# 📊 Retail Sales Analysis Using SQL

A SQL-based project that analyzes retail sales data to identify sales trends, top-performing products, customer purchasing patterns, revenue, profit, discounts, and payment details.

## ✨ Features

- Customer and product data management
- Order and payment tracking
- Total sales and revenue analysis
- Monthly and yearly sales analysis
- Top-selling product identification
- Customer spending analysis
- Product category performance analysis
- Profit and discount calculations
- Payment method and status analysis
- 40 SQL queries for business insights

## 🛠️ Tech Stack

- **MySQL**
- **MySQL Workbench**
- SQL
- Relational Database Management
- Sample Retail Sales Dataset

## 📦 Database Tables

1. **Customers** – Stores customer names, cities, and regions.
2. **Products** – Stores product names, categories, selling prices, and cost prices.
3. **Orders** – Stores order dates, customer IDs, order statuses, and total amounts.
4. **Order_Details** – Stores product IDs, quantities, unit prices, and discounts.
5. **Payments** – Stores payment dates, methods, amounts, and statuses.

## ⚙️ How to Run

### Create the database

```sql
CREATE DATABASE retail_sales;
USE retail_sales;
```

### Create the tables

- Execute the `CREATE TABLE` statements in the correct order.
- Define primary keys and foreign keys to connect related tables.

### Insert sample data

- Insert records into all five tables.
- Ensure referenced customer, product, and order IDs exist.

### Run the queries

- Execute the SQL analysis queries in MySQL Workbench.
- View the results in the output grid.

## 📊 SQL Concepts Used

- `SELECT`, `WHERE`, `ORDER BY`, and `LIMIT`
- Aggregate functions: `SUM()`, `COUNT()`, `AVG()`, `MIN()`, `MAX()`
- `GROUP BY` and `HAVING`
- `JOIN` and `LEFT JOIN`
- Subqueries and `CASE` statements
- Date functions: `YEAR()` and `MONTH()`
- Primary keys and foreign keys

## 📈 Analysis Performed

- Total sales and revenue calculation
- Monthly and yearly sales comparisons
- Top-selling products and categories
- High-value and repeat customer identification
- Product profit and discount analysis
- Payment method and payment status analysis

## 👤 Team Member

**Sahasra**

- Designed the relational database tables.
- Inserted and organized sample retail sales data.
- Developed SQL queries for sales and business analysis.
- Analyzed customer, product, revenue, and payment data.
- Tested queries and documented the project.

## 📝 Conclusion

The **Retail Sales Analysis Using SQL** project demonstrates how SQL can be used to manage retail data and generate meaningful business insights. It helps analyze sales performance, customer behavior, product profitability, and payment information while strengthening SQL query-writing and database management skills.
