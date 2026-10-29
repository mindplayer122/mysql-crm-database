MySQL CRM Database

About the Project

This project demonstrates the design and management of a relational database for a simple Customer Relationship Management (CRM) system using MySQL.

The database stores customer information, product details, orders, order items and customer feedback. It demonstrates SQL queries for managing records, retrieving related information and analysing product ratings.

Database Structure

The database contains five tables:

Customers: Stores customer names, email addresses and phone numbers.

Products: Stores product names, prices and stock quantities.

Orders: Records customer orders, order dates and total amounts.

Order Items: Links orders to products and records quantities and prices.

Feedback: Stores product ratings, comments and feedback dates.

Primary keys and foreign keys are used to define relationships between the tables.

Features

Created a relational database with five related tables.

Used primary keys and foreign key constraints.

Added sample customer, product, order and feedback data.

Implemented CRUD operations to create, retrieve, update and delete records.

Used SQL joins to retrieve related customer and order information.

Used aggregate functions, including AVG() and COUNT(), to analyse product ratings.

Applied UNIQUE, NOT NULL and CHECK constraints.

Technologies Used

MySQL

SQL

MySQL Workbench

SQL Concepts Demonstrated

Database and table creation

Data types and constraints

Primary and foreign keys

INSERT, SELECT, UPDATE and DELETE

INNER JOIN

Aggregate functions

GROUP BY

Example Queries

Retrieve Customer Orders

SELECT c.name, o.order_id, o.order_date, o.total_amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;

This query retrieves customer names alongside their order details by joining the customers and orders tables.

Calculate Product Ratings

SELECT p.product_name,
       AVG(f.rating) AS average_rating,
       COUNT(f.feedback_id) AS feedback_count
FROM products p
JOIN feedback f ON p.product_id = f.product_id
GROUP BY p.product_name;

This query calculates the average product rating and counts the associated feedback records.

Getting Started

Requirements

MySQL Server

MySQL Workbench or another MySQL client

Setup Instructions

Clone or download this repository.

Open the SQL script in MySQL Workbench.

Connect to your MySQL Server instance.

Execute the script to create the database, tables and sample records.

Run the queries to explore the data and their results.

Note: Review the SQL script before running it. Any DROP DATABASE statement should be removed from the normal setup script to prevent accidental data loss.

Project Purpose

This project was developed as a practical demonstration of SQL skills, relational database design and data manipulation using MySQL.
