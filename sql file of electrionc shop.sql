CREATE DATABASE electronic_shop2;
USE electronic_shop2;
CREATE TABLE customers (
    customer_id VARCHAR(20) PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    phone_no VARCHAR(20),
    address_line1 VARCHAR(255),
    country VARCHAR(50),
    postcode VARCHAR(20),
    loyalty_card VARCHAR(20)
);
CREATE TABLE products (
    product_id VARCHAR(20) PRIMARY KEY,
    product_name VARCHAR(100),
    product_type VARCHAR(100),
    unit_price DECIMAL(10,2),
    price DECIMAL(10,2),
    shop_price DECIMAL(10,2),
    profit DECIMAL(10,2),
    loss DECIMAL(10,2)
);
CREATE TABLE orders (
    order_id VARCHAR(20) PRIMARY KEY,
    order_date DATE,
    customer_id VARCHAR(20),
    product_id VARCHAR(20),
    product_name VARCHAR(100),
    quantity INT,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    country VARCHAR(50),
    size VARCHAR(20),
    unit_price DECIMAL(10,2),
    sales DECIMAL(10,2),
    imported VARCHAR(10),
    exported VARCHAR(10),
    loyalty_card VARCHAR(20)
);

DESCRIBE orders;

SELECT * FROM customers LIMIT 10;
SELECT * FROM products LIMIT 10;
SELECT * FROM orders LIMIT 10;
DESCRIBE orders;
SELECT * FROM orders LIMIT 5;
SELECT COUNT(*) FROM customers;

SELECT COUNT(*) FROM products;

SELECT COUNT(*) FROM orders;
SELECT COUNT(*) AS total_orders
FROM orders;
SELECT 
product_id,
COUNT(*) AS total_sales
FROM orders
GROUP BY product_id
ORDER BY total_sales DESC;
SELECT 
customer_id,
COUNT(order_id) AS orders_count
FROM orders
GROUP BY customer_id
ORDER BY orders_count DESC;



CREATE TABLE orders_new (
    order_id VARCHAR(20) PRIMARY KEY,
    order_date DATE,
    customer_id VARCHAR(50),
    product_id VARCHAR(50),
    product_name VARCHAR(100),
    quantity INT,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    country VARCHAR(50),
    size VARCHAR(50),
    unit_price DECIMAL(10,2),
    sales INT,
    imported INT,
    exported INT,
    loyalty_card VARCHAR(10)
);

DESCRIBE orders;

SELECT COUNT(*) FROM orders;

SHOW TABLES;
SELECT COUNT(*) FROM orders_new;
SELECT * FROM orders_new LIMIT 5;
CREATE TABLE test_orders (
    order_id VARCHAR(50),
    order_date VARCHAR(50),
    customer_id VARCHAR(50),
    product_id VARCHAR(50),
    product_name VARCHAR(50)
);
SELECT COUNT(*) FROM test_orders;
LOAD DATA LOCAL INFILE 'C:/Users/YourName/Desktop/orders.csv'
INTO TABLE orders_new
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/AK/Desktop/oder3.csv'
INTO TABLE orders_new
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SHOW CREATE TABLE orders_new;

SELECT COUNT(*) FROM orders_new;

CREATE TABLE order_test (
    order_id VARCHAR(50),
    order_date VARCHAR(50),
    customer_id VARCHAR(50),
    product_id VARCHAR(50),
    product_name VARCHAR(100)
);

LOAD DATA LOCAL INFILE 'C:/Users/AK/Desktop/oder3.csv'
INTO TABLE order_test
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(order_id, order_date, customer_id, product_id, product_name);

SELECT COUNT(*) FROM order_test;


LOAD DATA LOCAL INFILE 'C:/Users/AK/Desktop/oder3.csv'
INTO TABLE order_test
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/AK/Desktop/oder3.csv'
INTO TABLE order_test
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;


SHOW VARIABLES LIKE 'local_infile';
SET GLOBAL local_infile = 1;
SHOW VARIABLES LIKE 'local_infile';

SHOW VARIABLES LIKE 'local_infile';

LOAD DATA LOCAL INFILE 'C:/Users/AK/Desktop/oder3.csv'
INTO TABLE order_test
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/AK/Desktop/oder3.csv'
INTO TABLE order_test
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/AK/Desktop/oder3.csv'
INTO TABLE order_test
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/AK/Desktop/oder3.csv'
INTO TABLE order_test
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SELECT @@local_infile;

LOAD DATA LOCAL INFILE 'C:/Users/AK/Desktop/oder3.csv'
INTO TABLE order_test
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/AK/Desktop/oder3.csv'
INTO TABLE order_test
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;