# Online Bookstore SQL Project

This project demonstrates SQL skills by designing and analyzing an online bookstore database using PostgreSQL. 
It covers database schema design, data import, and analytical queries to extract business insights.

---

## Project Structure

sql-online-bookstore-analysis  
├── Data/  
│   ├── Books.csv  
│   ├── Customers.csv  
│   └── Orders.csv  
│  
├── sql/  
│   ├── schema.sql  
│   ├── data_import.sql  
│   └── analysis_queries.sql  
│  
└── README.md  

---

## Database Schema

The project consists of three tables:

- **Books**: Stores book details such as title, author, genre, price, and stock.
- **Customers**: Stores customer information including name, email, and location.
- **Orders**: Stores order details and maintains relationships with Books and Customers using foreign keys.

---

## Key Features

- Relational database design with **primary and foreign key constraints**
- Data import from CSV files using the `COPY` command
- Analysis of sales, customers, revenue, and inventory
- Beginner to advanced SQL queries using JOINs, GROUP BY, HAVING, and aggregate functions

---

## Sample Analysis Performed

- Total stock available and remaining stock after orders
- Total revenue generated from all orders
- Top-selling books and genres
- Customer spending analysis
- Most frequently ordered book

---

## Tools & Technologies Used

- PostgreSQL
- SQL
- VS Code

---

## How to Run This Project

1. Run `schema.sql` to create database tables.
2. Run `data_import.sql` to load CSV data into tables.
3. Run queries from `analysis_queries.sql` to perform analysis.

---

## Author

**Shivanshu Gaur**  
Aspiring Data Analyst
