-- Import data into Books table
COPY Books (Book_ID, Title, Author, Genre, Published_Year, Price, Stock)
FROM './data/Books.csv'
DELIMITER ','
CSV HEADER;

-- Import data into Customers table
COPY Customers (Customer_ID, Name, Email, Phone, City, Country)
FROM './data/Customers.csv'
DELIMITER ','
CSV HEADER;

-- Import data into Orders table
COPY Orders (Order_ID, Customer_ID, Book_ID, Order_Date, Quantity, Total_Amount)
FROM './data/Orders.csv'
DELIMITER ','
CSV HEADER;
