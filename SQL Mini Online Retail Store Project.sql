-- You are working as a junior data analyst for an online retail company. Your manager has provided the Orders table and asked you to answer the following questions
--  using  SQL queries

-- Create the Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerName VARCHAR(50),
    ProductCategory VARCHAR(30),
    ProductName VARCHAR(50),
    UnitPrice DECIMAL(10,2),
    Quantity INT,
    Region VARCHAR(20),
    PaymentStatus VARCHAR(20)
);

-- Insert sample data
INSERT INTO Orders (OrderID, OrderDate, CustomerName, ProductCategory, ProductName, UnitPrice, Quantity, Region, PaymentStatus) VALUES
(1001, '2024-06-01', 'Alice Smith', 'Clothing', 'T-Shirt', 20.00, 2, 'North', 'Paid'),
(1002, '2024-06-02', 'John Lee', 'Footwear', 'Sneakers', 60.00, 1, 'East', 'Paid'),
(1003, '2024-06-02', 'Priya Kumar', 'Accessories', 'Sunglasses', 25.00, 3, 'South', 'Pending'),
(1004, '2024-06-03', 'Steve Wang', 'Clothing', 'Jeans', 40.00, 2, 'West', 'Paid'),
(1005, '2024-06-03', 'Mary Jones', 'Footwear', 'Sandals', 35.00, 1, 'West', 'Paid'),
(1006, '2024-06-04', 'Rahul Singh', 'Clothing', 'Hoodie', 50.00, 1, 'East', 'Paid'),
(1007, '2024-06-04', 'Sarah Johnson', 'Footwear', 'Sneakers', 60.00, 2, 'North', 'Paid'),
(1008, '2024-06-05', 'Anna Brown', 'Accessories', 'Belt', 15.00, 4, 'South', 'Paid'),
(1009, '2024-06-05', 'John Davis', 'Clothing', 'T-Shirt', 20.00, 3, 'West', 'Paid'),
(1010, '2024-06-06', 'David Miller', 'Footwear', 'Sneakers', 60.00, 1, 'North', 'Paid');

SELECT * FROM orders;
-- Find the total revenue from paid orders.
SELECT SUM(unitPrice*Quantity) as Total_Revenue FROM orders WHERE PaymentStatus = "Paid";
-- Count the number of orders per product category.
SELECT  ProductCategory  ,count(OrderID) as number_of_orders FROM orders GROUP BY  ProductCategory;
-- Find the top-selling product by quantity sold.
SELECT   distinct ProductName,sum(Quantity) as quantity_sold FROM orders GROUP BY ProductName   order by quantity_sold DESC ;
-- Identify the region with the highest total sales.
SELECT Region,sum(unitprice*quantity) as total_sales FROM orders GROUP BY Region;
-- Calculate the average order value (only for paid orders).
SELECT avg(unitprice*quantity/quantity) as AOV FROM orders WHERE PaymentStatus= "Paid";
-- List all customers who bought more than 2 items in a single order.
SELECT CustomerName FROM Orders where Quantity>=2;
-- Find the total revenue per product category.
SELECT ProductCategory,SUM(UnitPrice*Quantity) AS Total_Revenue FROM orders group by ProductCategory;
-- Show orders sorted by highest revenue first (UnitPrice × Quantity).
SELECT 
    OrderID,
    CustomerName,
    ProductName,
    UnitPrice,
    Quantity,
    (UnitPrice * Quantity) AS Revenue
FROM Orders
ORDER BY Revenue DESC;

