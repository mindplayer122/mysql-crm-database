# MySQL CRM Database

A MySQL database project demonstrating relational database design and SQL queries for managing customers, products, orders and customer feedback.

## Features

- Create a relational database with five related tables
- Store customer, product, order and feedback data
- Use primary keys and foreign keys to link tables
- Insert, retrieve, update and delete records
- Join tables to retrieve related information
- Calculate average product ratings and feedback counts
- Apply data constraints, including `UNIQUE` and `CHECK`

## Technologies Used

- MySQL
- SQL
- MySQL Workbench
- Git
- GitHub

## Database Structure

- `customers` - Customer details
- `products` - Product names, prices and stock
- `orders` - Customer orders and order totals
- `order_items` - Products included in orders
- `feedback` - Product ratings and customer comments

## SQL Concepts Demonstrated

- Database and table creation
- Primary and foreign keys
- CRUD operations
- `SELECT`, `INSERT`, `UPDATE` and `DELETE`
- `INNER JOIN`
- Aggregate functions such as `AVG()` and `COUNT()`
- `GROUP BY`
- Data constraints

## Example Queries

### Retrieve Customer Orders

```sql
SELECT c.name, o.order_id, o.order_date, o.total_amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;

```
### Calculate Product Ratings

```sql
SELECT p.product_name,
       AVG(f.rating) AS average_rating,
       COUNT(f.feedback_id) AS feedback_count
FROM products p
JOIN feedback f ON p.product_id = f.product_id
GROUP BY p.product_name;

```
## How to run Locally

1. Clone the repository.
2. Open the SQL script in MySQL Workbench.
3. Connect to your MySQL Server instance.
4. Run the script to create the database, tables and sample data.
5. Execute the queries to view and explore the results.
   
Note: Remove the final DROP DATABASE crm_db; statement from the setup script to prevent the database from being deleted after execution.
