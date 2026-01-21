--1) Retrieve all the books in the "fiction" genre
SELECT * FROM books
WHERE genre = 'Fiction';


-- 2) Find books published after the year 1950:
SELECT * FROM books
WHERE published_year > 1950;


-- 3) List all customers from the Canada:
SELECT * FROM customers
WHERE country LIKE '%Canada%';


-- 4) Show orders placed in November 2023:
SELECT * FROM orders
WHERE order_date BETWEEN '2023-11-01' AND '2023-11-30';


-- 5) Retrieve the total stock of books available:
SELECT SUM(stock) AS total_stocks
FROM books;

-- 6) Find the details of the most expensive book:
SELECT * FROM books
ORDER BY price DESC
LIMIT 1;


-- 7) Show all customers who ordered more than 1 quantity of a book:
SELECT * FROM orders
WHERE quantity >1;


-- 8) Retrieve all orders where the total amount exceeds $20:
SELECT * FROM Orders 
WHERE total_amount>20;

-- 9) List all genres available in the Books table:
SELECT DISTINCT genre From books;


-- 10) Find the book with the lowest stock:
SELECT * FROM Books 
ORDER BY stock 
LIMIT 1;

-- 11) Calculated the total revenue generated from the all orders
SELECT SUM(total_amount) AS total_revenue
FROM orders;


-- 12) Retrieve the total number of books sold for each genre:
SELECT b.genre , SUM(o.quantity) AS total_books_sold
FROM orders o
INNER JOIN books b
ON o.book_id = b.book_id
GROUP BY b.genre;

-- 13) Find the average price of books in the "Fantasy" genre:
SELECT AVG(price) AS avg_price
FROM books
WHERE Genre LIKE '%Fantasy%'; 

SELECT * FROM ORDERS; 


-- 14) List customers who have placed at least 2 orders:
SELECT c.name, o.customer_id, COUNT(o.order_id) AS order_count
FROM orders o
INNER JOIN customers c
ON c.customer_id = o.customer_id
GROUP BY c.name,o.customer_id
HAVING COUNT(o.order_id) >=2;


-- 15) Find the most frequently ordered book:
SELECT o.Book_id, b.title, COUNT(o.order_id) AS order_count
FROM orders o
INNER JOIN books b
ON b.book_id = o.book_id
GROUP BY o.Book_id, b.title
ORDER BY ORDER_COUNT DESC LIMIT 1;


-- 16)  Show the top 3 most expensive 'Fantasy' genre
SELECT * FROM Books
WHERE genre LIKE '%Fantasy%' 
ORDER BY price DESC LIMIT 3;


-- 17) Retrieve the total quantity of books sold by each author:
SELECT b.author, SUM(o.quantity) AS total_books_sold
FROM orders o
INNER JOIN books b 
ON o.book_id= b.book_id
GROUP BY b.author;


-- 18) List the cities where customers who spent over $30 are located:
SELECT DISTINCT c.city, SUM(o.total_amount) AS spent
FROM orders o
INNER JOIN customers c
ON c.customer_id = o.customer_id
GROUP BY c.city,c.customer_id
HAVING SUM(o.total_amount) >30;


-- 19) Find the customer who spent the most on orders:
SELECT c.name,c.customer_id, SUM(o.total_amount) AS total_spent
FROM orders o
INNER JOIN customers c
ON c.customer_id = o.customer_id
GROUP BY c.customer_id,c.name
ORDER BY total_spent DESC LIMIT 1;


-- 20) Calculate the stock remaining after fulfilling all orders:
SELECT b.book_id, b.title,b.stock, COALESCE(SUM(o.quantity),0) AS order_quantity,
			b.stock- COALESCE(SUM(o.quantity),0) AS Remaining_Quantity
FROM books b
LEFT JOIN orders o
ON b.book_id = o.book_id
GROUP BY b.book_id 
ORDER BY b.book_id;