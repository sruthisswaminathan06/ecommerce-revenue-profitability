
-- Create Database
CREATE DATABASE EcommerceAnalytics;
USE EcommerceAnalytics;

-- Create Products Table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    cost_price DECIMAL(10,2),
    selling_price DECIMAL(10,2)
);

-- Create Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    region VARCHAR(50),
    signup_date DATE
);

-- Create Orders Table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    quantity INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Create Payments Table
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_method VARCHAR(20),
    payment_status VARCHAR(20),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

INSERT INTO Products VALUES
(1, 'Laptop', 'Stationery', 45.0, 70.05),
(2, 'Smartphone', 'Furniture', 149.13, 219.41),
(3, 'Headphones', 'Furniture', 264.22, 406.58),
(4, 'Office Chair', 'Appliances', 335.1, 569.93),
(5, 'Desk', 'Stationery', 249.61, 409.03),
(6, 'Monitor', 'Accessories', 225.21, 393.59),
(7, 'Keyboard', 'Accessories', 498.58, 748.68),
(8, 'Mouse', 'Accessories', 212.56, 371.07),
(9, 'Printer', 'Appliances', 200.59, 381.05),
(10, 'Tablet', 'Appliances', 320.29, 500.61),
(11, 'Coffee Maker', 'Electronics', 168.79, 204.05),
(12, 'Microwave', 'Electronics', 378.31, 509.61),
(13, 'Bookshelf', 'Appliances', 494.23, 867.29),
(14, 'Pen Set', 'Accessories', 418.01, 676.59),
(15, 'Notebook', 'Electronics', 61.21, 103.17),
(16, 'Lamp', 'Stationery', 347.21, 442.27),
(17, 'Router', 'Furniture', 44.49, 59.76),
(18, 'Speaker', 'Appliances', 83.32, 126.73),
(19, 'Camera', 'Stationery', 302.07, 449.63),
(20, 'Smartwatch', 'Furniture', 482.16, 662.43);

INSERT INTO Customers VALUES
(1, 'Alice Johnson', 'South', '2023-02-14'),
(2, 'Bob Smith', 'West', '2023-08-14'),
(3, 'Charlie Brown', 'West', '2023-04-13'),
(4, 'Diana Prince', 'West', '2023-05-27'),
(5, 'Ethan Hunt', 'North', '2023-07-12'),
(6, 'Fiona Davis', 'West', '2023-03-01'),
(7, 'George Clark', 'North', '2023-05-18'),
(8, 'Hannah Lee', 'West', '2023-08-23'),
(9, 'Ian Wright', 'West', '2023-03-03'),
(10, 'Julia Roberts', 'West', '2023-08-12'),
(11, 'Kevin Adams', 'North', '2023-03-31'),
(12, 'Laura Scott', 'West', '2023-08-01'),
(13, 'Michael King', 'South', '2023-05-31'),
(14, 'Nina Lopez', 'East', '2023-04-06'),
(15, 'Oscar Turner', 'South', '2023-01-09');

INSERT INTO Orders VALUES
(101, 7, 15, '2023-05-28', 1),
(102, 10, 15, '2023-05-15', 1),
(103, 8, 14, '2023-06-05', 1),
(104, 13, 4, '2023-05-14', 2),
(105, 14, 8, '2023-06-16', 1),
(106, 2, 15, '2023-10-10', 1),
(107, 10, 14, '2023-09-15', 3),
(108, 2, 19, '2023-05-03', 5),
(109, 1, 6, '2023-05-10', 2),
(110, 4, 11, '2023-10-08', 4),
(111, 1, 2, '2023-08-04', 2),
(112, 6, 14, '2023-06-25', 3),
(113, 8, 8, '2023-08-06', 4),
(114, 2, 13, '2023-09-19', 2),
(115, 11, 16, '2023-10-02', 3),
(116, 4, 14, '2023-07-09', 4),
(117, 8, 5, '2023-06-14', 4),
(118, 9, 3, '2023-09-24', 5),
(119, 14, 15, '2023-06-17', 1),
(120, 4, 10, '2023-05-16', 3),
(121, 4, 8, '2023-07-02', 1),
(122, 15, 5, '2023-10-04', 1),
(123, 14, 5, '2023-05-05', 2),
(124, 2, 12, '2023-06-03', 5),
(125, 8, 1, '2023-05-05', 4),
(126, 8, 19, '2023-05-14', 3),
(127, 11, 5, '2023-09-05', 3),
(128, 4, 17, '2023-07-11', 4),
(129, 5, 7, '2023-09-23', 4),
(130, 6, 17, '2023-06-22', 1),
(131, 4, 6, '2023-07-01', 4),
(132, 13, 14, '2023-07-10', 2),
(133, 10, 15, '2023-10-01', 2),
(134, 13, 1, '2023-10-26', 1),
(135, 1, 15, '2023-07-11', 3),
(136, 1, 10, '2023-10-08', 4),
(137, 9, 6, '2023-08-06', 4),
(138, 15, 18, '2023-09-05', 5),
(139, 15, 7, '2023-10-04', 5),
(140, 13, 10, '2023-05-24', 1),
(141, 3, 10, '2023-09-02', 5),
(142, 4, 5, '2023-07-22', 1),
(143, 13, 1, '2023-08-04', 3),
(144, 13, 20, '2023-09-01', 4),
(145, 3, 13, '2023-07-12', 4),
(146, 15, 14, '2023-07-25', 1),
(147, 11, 14, '2023-08-21', 5),
(148, 1, 8, '2023-10-16', 1),
(149, 3, 10, '2023-05-10', 4),
(150, 13, 13, '2023-05-30', 3),
(151, 11, 10, '2023-06-03', 2),
(152, 2, 11, '2023-07-09', 5),
(153, 15, 8, '2023-10-24', 2),
(154, 5, 4, '2023-05-09', 1),
(155, 8, 19, '2023-08-26', 1),
(156, 14, 20, '2023-08-27', 2),
(157, 2, 2, '2023-10-22', 4),
(158, 13, 9, '2023-07-03', 1),
(159, 4, 16, '2023-10-11', 3),
(160, 1, 8, '2023-10-24', 4),
(161, 6, 2, '2023-08-15', 5),
(162, 9, 15, '2023-08-26', 1),
(163, 6, 18, '2023-10-24', 2),
(164, 3, 16, '2023-07-24', 3),
(165, 10, 4, '2023-08-21', 3),
(166, 10, 8, '2023-09-17', 3),
(167, 15, 8, '2023-08-08', 4),
(168, 6, 10, '2023-05-03', 3),
(169, 15, 2, '2023-06-12', 1),
(170, 6, 12, '2023-06-08', 4),
(171, 5, 2, '2023-07-30', 1),
(172, 14, 7, '2023-05-22', 2),
(173, 11, 12, '2023-10-04', 4),
(174, 6, 20, '2023-10-17', 4),
(175, 9, 10, '2023-05-09', 1),
(176, 2, 7, '2023-05-27', 1),
(177, 8, 15, '2023-07-28', 4),
(178, 10, 17, '2023-06-09', 1),
(179, 5, 11, '2023-10-09', 3),
(180, 11, 7, '2023-06-20', 2);

INSERT INTO Payments VALUES
(201, 101, 'Credit Card', 'Failed'),
(202, 102, 'Debit Card', 'Completed'),
(203, 103, 'PayPal', 'Failed'),
(204, 104, 'Credit Card', 'Pending'),
(205, 105, 'UPI', 'Pending'),
(206, 106, 'UPI', 'Pending'),
(207, 107, 'Debit Card', 'Pending'),
(208, 108, 'Debit Card', 'Completed'),
(209, 109, 'UPI', 'Pending'),
(210, 110, 'UPI', 'Completed'),
(211, 111, 'Credit Card', 'Completed'),
(212, 112, 'PayPal', 'Completed'),
(213, 113, 'Credit Card', 'Failed'),
(214, 114, 'PayPal', 'Pending'),
(215, 115, 'PayPal', 'Failed'),
(216, 116, 'Credit Card', 'Pending'),
(217, 117, 'UPI', 'Completed'),
(218, 118, 'Debit Card', 'Failed'),
(219, 119, 'PayPal', 'Failed'),
(220, 120, 'UPI', 'Failed'),
(221, 121, 'Credit Card', 'Failed'),
(222, 122, 'Credit Card', 'Failed'),
(223, 123, 'Debit Card', 'Failed'),
(224, 124, 'UPI', 'Pending'),
(225, 125, 'Credit Card', 'Completed'),
(226, 126, 'UPI', 'Pending'),
(227, 127, 'PayPal', 'Completed'),
(228, 128, 'Debit Card', 'Pending'),
(229, 129, 'UPI', 'Failed'),
(230, 130, 'UPI', 'Pending'),
(231, 131, 'PayPal', 'Completed'),
(232, 132, 'Credit Card', 'Pending'),
(233, 133, 'Debit Card', 'Pending'),
(234, 134, 'UPI', 'Failed'),
(235, 135, 'Credit Card', 'Failed'),
(236, 136, 'Credit Card', 'Pending'),
(237, 137, 'UPI', 'Failed'),
(238, 138, 'Debit Card', 'Completed'),
(239, 139, 'UPI', 'Failed'),
(240, 140, 'PayPal', 'Pending'),
(241, 141, 'UPI', 'Pending'),
(242, 142, 'PayPal', 'Completed'),
(243, 143, 'Credit Card', 'Pending'),
(244, 144, 'PayPal', 'Failed'),
(245, 145, 'PayPal', 'Pending'),
(246, 146, 'UPI', 'Completed'),
(247, 147, 'Credit Card', 'Pending'),
(248, 148, 'Debit Card', 'Completed'),
(249, 149, 'Credit Card', 'Failed'),
(250, 150, 'Debit Card', 'Pending'),
(251, 151, 'PayPal', 'Failed'),
(252, 152, 'Debit Card', 'Failed'),
(253, 153, 'Debit Card', 'Pending'),
(254, 154, 'Credit Card', 'Pending'),
(255, 155, 'PayPal', 'Completed'),
(256, 156, 'UPI', 'Failed'),
(257, 157, 'Debit Card', 'Failed'),
(258, 158, 'PayPal', 'Pending'),
(259, 159, 'PayPal', 'Completed'),
(260, 160, 'PayPal', 'Failed'),
(261, 161, 'PayPal', 'Pending'),
(262, 162, 'Credit Card', 'Failed'),
(263, 163, 'PayPal', 'Failed'),
(264, 164, 'Debit Card', 'Failed'),
(265, 165, 'Credit Card', 'Failed'),
(266, 166, 'UPI', 'Completed'),
(267, 167, 'Credit Card', 'Failed'),
(268, 168, 'PayPal', 'Completed'),
(269, 169, 'Debit Card', 'Pending'),
(270, 170, 'Debit Card', 'Failed'),
(271, 171, 'UPI', 'Pending'),
(272, 172, 'UPI', 'Completed'),
(273, 173, 'Debit Card', 'Pending'),
(274, 174, 'Debit Card', 'Failed'),
(275, 175, 'Credit Card', 'Completed'),
(276, 176, 'PayPal', 'Completed'),
(277, 177, 'UPI', 'Pending'),
(278, 178, 'Credit Card', 'Pending'),
(279, 179, 'Credit Card', 'Completed'),
(280, 180, 'PayPal', 'Failed');


-- 1. Total Revenue and Profit
SELECT SUM(quantity * selling_price) AS total_revenue,
       SUM((selling_price - cost_price) * quantity) AS total_profit
FROM Orders
JOIN Products ON Orders.product_id = Products.product_id;

-- 2. Monthly Revenue Trend
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
       SUM(quantity * selling_price) AS revenue
FROM Orders
JOIN Products ON Orders.product_id = Products.product_id
GROUP BY month
ORDER BY month;

-- 3. Top Products by Revenue
SELECT product_name, SUM(quantity * selling_price) AS revenue
FROM Orders
JOIN Products ON Orders.product_id = Products.product_id
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;

-- 4. Top Customers by Spend
SELECT name, SUM(quantity * selling_price) AS total_spent
FROM Orders
JOIN Customers ON Orders.customer_id = Customers.customer_id
JOIN Products ON Orders.product_id = Products.product_id
GROUP BY name
ORDER BY total_spent DESC
LIMIT 10;

-- 5. Profit Margin by Category
SELECT category,
       SUM((selling_price - cost_price) * quantity) AS profit,
       SUM(quantity * selling_price) AS revenue,
       (SUM((selling_price - cost_price) * quantity) / SUM(quantity * selling_price)) * 100 AS profit_margin
FROM Orders
JOIN Products ON Orders.product_id = Products.product_id
GROUP BY category
ORDER BY profit_margin DESC;

-- 6. Regional Performance
SELECT region, SUM(quantity * selling_price) AS revenue
FROM Orders
JOIN Customers ON Orders.customer_id = Customers.customer_id
JOIN Products ON Orders.product_id = Products.product_id
GROUP BY region
ORDER BY revenue DESC;

-- 7. Payment Method Analysis
SELECT payment_method, COUNT(*) AS transactions, SUM(quantity * selling_price) AS revenue
FROM Payments
JOIN Orders ON Payments.order_id = Orders.order_id
JOIN Products ON Orders.product_id = Products.product_id
GROUP BY payment_method;

-- 8. Payment Status Summary
SELECT payment_status, COUNT(*) AS count
FROM Payments
GROUP BY payment_status;

-- 9. Customer Acquisition Trend
SELECT DATE_FORMAT(signup_date, '%Y-%m') AS month, COUNT(*) AS new_customers
FROM Customers
GROUP BY month
ORDER BY month;

-- 10. RFM Segmentation
SELECT customer_id,
       MAX(order_date) AS last_purchase,
       COUNT(order_id) AS frequency,
       SUM(quantity * selling_price) AS monetary_value
FROM Orders
JOIN Products ON Orders.product_id = Products.product_id
GROUP BY customer_id;

-- 11. Basket Analysis (Products bought together)
SELECT o1.product_id AS product_A, o2.product_id AS product_B, COUNT(*) AS frequency
FROM Orders o1
JOIN Orders o2 ON o1.order_id = o2.order_id AND o1.product_id <> o2.product_id
GROUP BY product_A, product_B
ORDER BY frequency DESC;
