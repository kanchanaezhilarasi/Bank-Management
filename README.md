# Bank-Management
Bank Management System
Bank Management System — SQL Project (Oracle)

A relational database project simulating a simple banking system, built to demonstrate core to intermediate SQL skills: schema design, constraints, DML, transaction control, filtering, functions, aggregation, joins, window functions, and CTEs.

Overview

This project models a small bank with customers, branches, accounts, employees, and transactions. It was built as a hands-on exercise in translating real-world relationships (a customer has accounts, an account belongs to a branch, a transaction happens on an account) into a normalized relational schema, then answering business questions against it using SQL.

Tech Stack
Database: Oracle SQL
Schema
Table	Description
CUSTOMER	Bank customers and their contact details
BRANCH	Bank branch locations
ACCOUNT	Customer accounts, linked to a customer and a branch
EMPLOYEE	Branch staff
BANK_TRANSACTION	Deposits, withdrawals, and transfers on an account

Relationships are enforced with primary and foreign keys (e.g. ACCOUNT.customer_id → CUSTOMER.customer_id, ACCOUNT.branch_id → BRANCH.branch_id), plus NOT NULL, UNIQUE, CHECK, and DEFAULT constraints where appropriate (e.g. restricting account_type to a fixed set of values, requiring positive balances).

What's Included
Table creation — CREATE TABLE statements for all five tables, with an ALTER TABLE example modifying an existing table
Sample data — enough rows to produce meaningful query results (10+ customers, 3+ branches, 10+ accounts, 8+ employees, 25+ transactions)
DML & transaction control — INSERT, UPDATE, DELETE, with COMMIT, ROLLBACK, and SAVEPOINT demonstrated
Querying — SELECT/WHERE filtering using comparison operators, AND/OR/NOT, IN, BETWEEN, LIKE, and ORDER BY
Functions — string functions (UPPER, LOWER, SUBSTR, LENGTH), numeric functions (ROUND, MOD), date functions (TO_CHAR, date arithmetic), NVL, and CASE expressions
Aggregation — COUNT, SUM, AVG, MAX, MIN with GROUP BY and HAVING
Joins — inner and outer joins across customers, accounts, branches, employees, and transactions
Window functions — RANK(), ROW_NUMBER(), PARTITION BY, running totals, LAG/LEAD
CTEs — WITH clauses used for per-account and per-branch summary reports
