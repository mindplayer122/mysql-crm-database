create database if not exists crm_db;
use crm_db;

create table customers(
	customer_id int primary key auto_increment,
    name varchar(100) not null,
    email varchar(100) unique,
    phone varchar(20)
);

create table products (
	product_id int primary key auto_increment,
    product_name varchar(100) not null,
    price decimal(10,2) not null,
    stock int default 0
);

create table orders (
	order_id int primary key auto_increment,
    customer_id int,
    order_date date,
    total_amount decimal(10,2),
    foreign key (customer_id) references customers(customer_id)
);

create table order_items (
	order_item_id int primary key auto_increment,
    order_id int,
    product_id int,
    qauntity int,
    price decimal(10,2),
    foreign key (order_id) references orders(order_id),
    foreign key (product_id) references products(product_id)
);

create table feedback (
	feedback_id int primary key auto_increment,
    customer_id int,
    product_id int,
    rating int check(rating >= 1 and rating <=5),
    comments varchar(255),
    feedback_date date,
    foreign key (customer_id) references customers(customer_id),
    foreign key (product_id) references products(product_id)
);


insert into customers (name, email, phone)
values ('John Doe', 'john@example.com', '123456789');

insert into products (product_name, price, stock)
values ('Laptop', 1200.00, 10);

insert into orders (customer_id, order_date, total_amount)
values (1, curdate(), 1200.00);

insert into order_items (order_id, product_id, qauntity, price)
values (1, 1, 1, 1200.00);

insert into feedback (customer_id, product_id, rating, comments, feedback_date)
values(1, 1, 5, 'Excellent product!!', curdate());

SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM feedback;

update customers
set phone = '987654321'
where customer_id = 1;

update products
set price = 1100.00
where product_id = 1;

delete from feedback where feedback_id = 1;
delete from order_items where order_item_id = 1;

select c.name, o.order_id, o.order_date, o.total_amount
from customers c
join orders o on c.customer_id = o.customer_id;

select p.product_name,
	avg(f.rating) as average_rating,
    count(f.feedback_id) as feedback_count
from products p
join feedback f on p.product_id = f.product_id
group by p.product_name;

drop database crm_db;