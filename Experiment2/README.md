📌 Overview

This practical demonstrates SQL query writing in PostgreSQL by applying filtering, sorting, grouping, and aggregation techniques. It simulates real-world analytical reporting often required in industry and placement interviews.


👤 Student Details

Name 	Ravi Ranjan Kumar

UID 	25MCA20098

Branch  	MCA General

Semester	 II

Date of Performance 	22/01/2026

🎯 Aim

To implement and analyze SQL SELECT queries using filtering, sorting, grouping, and aggregation in PostgreSQL.

🎯 Objectives

Retrieve data using WHERE clause

Sort result sets with ORDER BY

Use GROUP BY for aggregation

Apply HAVING for filtered aggregation

Develop analytical SQL skills relevant to placements

🛠️ Implementation
1. Create Database
create database CompanyDB;

2. Create Table
create table customer_orders(
    order_id serial primary key,
    customer_name varchar(20),
    product varchar(20),
    quantity int,
    price numeric(10,2),
    order_date date
);

3. Insert Data
insert into customer_orders(customer_name,product,quantity,price,order_date) values
('Amit', 'Laptop', 1, 55000, '2025-01-05'),
('Amit', 'Mouse', 2, 800, '2025-01-06'),
('Riya', 'Mobile', 1, 22000, '2025-01-10'),
('Riya', 'Headphones', 1, 2000, '2025-01-10'),
('Karan', 'Laptop', 1, 60000, '2025-02-02'),
('Karan', 'Keyboard', 1, 1500, '2025-02-05'),
('Neha', 'Mobile', 2, 21000, '2025-02-15'),
('Neha', 'Charger', 3, 900, '2025-02-18');

📊 Query Execution
✔️ Display All Records
select * from customer_orders;

✔️ Filtering with WHERE
select order_id, customer_name, product, quantity, price
from customer_orders
where price > 20000;


✔️ Sorting Results
Ascending
order by price;

Descending
order by price desc;

✔️ Grouping (Aggregation)
select product, count(*) as total_product_sale
from customer_orders
group by product;


✔️ HAVING Clause
select product, sum(quantity*price) as total_revenue
from customer_orders
group by product
having sum(quantity*price) > 50000;


✔️ WHERE + HAVING Together
select product, sum(quantity*price) as total_revenue
from customer_orders
where order_date >= '2025-01-01'
group by product
having sum(quantity*price) > 50000;



🔍 I/O Analysis
Input

Customer order records

SQL queries for filtering, sorting, grouping, aggregation

Output

Filtered orders

<img width="617" height="144" alt="image" src="https://github.com/user-attachments/assets/c4070745-8ee8-48f9-bdf6-1fb78b976dab" />


Sorted results

<img width="617" height="142" alt="image" src="https://github.com/user-attachments/assets/3a1a7b86-2c86-453f-aa98-bb838dd16a9f" />


Product-wise sales summary

<img width="328" height="194" alt="image" src="https://github.com/user-attachments/assets/d964771e-b821-4ff2-bc80-1c36758e2ce5" />


Revenue aggregation reports

<img width="304" height="94" alt="image" src="https://github.com/user-attachments/assets/27ca6a79-95d0-4491-9f4e-2742982194fa" />


🎓 Learning Outcomes

Understanding of SQL filtering (WHERE)

Ability to sort data using ORDER BY

Knowledge of GROUP BY for aggregation

Clear distinction between WHERE vs HAVING

Confidence in writing analytical SQL queries

Better preparation for SQL-based technical interviews
