-- !!!!!!!!!!!!!!!!!!!!!!!!!! Class 05 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

-- !!!!!!!!!!!!!!!!!!!!!!!!!! Topics !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- SlELECT With WHERE Clause
--  AS Keyword
-- Operators
-- Advance Filtering (IN, NOT IN,BETWEEN, NOT BETWEEN, LIKE, NOT LIKE , IS NULL, IS NOT NULL)


CREATE DATABASE pmtz_202311e_class_05;
USE pmtz_202311e_class_05;


CREATE TABLE products (
    id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    price INT NOT NULL CHECK(price >= 5),
    quantity INT NOT NULL CHECK(quantity > 0) DEFAULT 1
);

INSERT INTO products (id, title, price, quantity) VALUES
(1, 'Wireless Mouse', 25, 10),
(2, 'Bluetooth Headphones', 70, 5),
(3, 'USB-C Charging Cable', 15, 20),
(4, 'Smartphone Stand', 30, 8),
(5, 'Laptop Backpack', 45, 12),
(6, 'Mechanical Keyboard', 90, 6),
(7, 'Gaming Monitor', 200, 4),
(8, 'External SSD 1TB', 100, 7),
(9, 'Wireless Charger', 20, 15),
(10, 'Webcam 1080p', 50, 9),
(11, 'Portable Hard Drive 2TB', 80, 5),
(12, 'Noise Cancelling Headphones', 150, 3),
(13, 'Smartwatch', 200, 6),
(14, 'Fitness Tracker', 100, 10),
(15, 'Bluetooth Speaker', 60, 4),
(16, 'HDMI Cable', 12, 25),
(17, 'Phone Case', 15, 15),
(18, 'Wireless Earbuds', 80, 8),
(19, 'Streaming Device', 50, 7),
(20, 'Gaming Mouse', 40, 10),
(21, '4K TV', 600, 2),
(22, 'Tablet Stand', 30, 9),
(23, 'Laptop Cooling Pad', 25, 6),
(24, 'USB Hub', 20, 12),
(25, 'Digital Camera', 500, 3),
(26, 'VR Headset', 400, 2),
(27, 'Action Camera', 300, 5),
(28, 'Wireless Print Scanner', 150, 4),
(29, 'Smart Home Hub', 100, 8),
(30, 'Home Security Camera', 120, 6),
(31, 'Smart Light Bulb', 20, 15),
(32, 'Wireless Router', 100, 5),
(33, 'Streaming Microphone', 80, 4),
(34, 'Smart Thermostat', 150, 2),
(35, 'Power Bank 20000mAh', 40, 10),
(36, 'Digital Photo Frame', 100, 3),
(37, 'Wireless Charging Stand', 25, 12),
(38, 'Electric Toothbrush', 90, 5),
(39, 'Cordless Vacuum Cleaner', 250, 2),
(40, 'Air Fryer', 100, 6),
(41, 'Instant Pot', 80, 4),
(42, 'Espresso Machine', 300, 1),
(43, 'Electric Kettle', 40, 7),
(44, 'Blender', 60, 8),
(45, 'Slow Cooker', 50, 10),
(46, 'Food Processor', 150, 3),
(47, 'Rice Cooker', 30, 12),
(48, 'Cookware Set', 200, 5),
(49, 'Cutlery Set', 40, 10),
(50, 'Kitchen Scale', 20, 15);


SELECT * FROM products;

-- !!!!!!!!!!!!!!!!!!!! Operators !!!!!!!!!!!!!!!!!!!!!!

-- Arithmetic Operators
-- +, -, *, /, %

SELECT *, price * 0.8 as discount from products;
-- Relational / Comparison  Operators
-- =, !=, <, >, <=, >=


SELECT * FROM products WHERE title='Laptop Backpack'; -- Find
SELECT * FROM products WHERE title='Laptop '; -- Not Find
SELECT * FROM products WHERE title='Laptop '; -- Not Find
SELECT * FROM products WHERE price=50;
SELECT * FROM products WHERE quantity=5;
SELECT * FROM products WHERE price!=100;
SELECT * FROM products WHERE quantity > 6;
SELECT * FROM products WHERE quantity >= 6;
-- Logical Operators
-- AND, OR, NOT
SELECT * FROM products WHERE price >= 50 AND price <=100;

SELECT * FROM products WHERE price >= 50 OR price <=100;

SELECT * FROM products WHERE price = 50 AND price =70;

SELECT * FROM products WHERE price = 50 OR price =70;

-- If You Used = in both Condition and yoy have same column then You need to Used OR Operator
-- If You Used other then = then You Need to Used AND 

SELECT * FROM products WHERE price >= 70 OR quantity <=5;
SELECT * FROM products WHERE price >= 70 AND quantity <=5;


-- !!!! Advance Filtering (IN, NOT IN,BETWEEN, NOT BETWEEN, LIKE, NOT LIKE , IS NULL, IS NOT NULL) !!!!

-- BETWEEN
SELECT * FROM products WHERE price >=100 AND price <=200;
SELECT * FROM products WHERE price BETWEEN 100 and 200;
SELECT * FROM products WHERE price NOT BETWEEN 100 and 200;

--  IN
SELECT * FROM products WHERE title='Smartphone Stand' OR title='Smartwatch' OR title='Wireless Router';
SELECT * FROM products WHERE title IN('Smartphone Stand','Smartwatch','Wireless Router');

SELECT * FROM products WHERE title NOT IN('Smartphone Stand','Smartwatch','Wireless Router');