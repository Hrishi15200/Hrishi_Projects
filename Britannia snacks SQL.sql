CREATE TABLE britannia_sales (
    Order_ID INT,
    Region VARCHAR(20),
    City VARCHAR(30),
    Product VARCHAR(10),
    Pack_Size VARCHAR(10),
    Flavor VARCHAR(20),
    Sales_Units INT,
    Sales_Amount INT,
    Sales_Date DATE
);
INSERT INTO britannia_sales VALUES
(1001, 'North', 'Delhi', 'Chips', '₹5', 'Masala', 120, 600, '2025-05-01'),
(1002, 'East', 'Kolkata', 'Sticks', '₹10', 'Tomato', 150, 1500, '2025-05-02'),
(1003, 'South', 'Chennai', 'Chips', '₹5', 'Tomato', 130, 650, '2025-05-03'),
(1004, 'West', 'Mumbai', 'Sticks', '₹10', 'Masala', 160, 1600, '2025-05-04'),
(1005, 'East', 'Bhubaneswar', 'Chips', '₹10', 'Masala', 110, 1100, '2025-05-05'),
(1006, 'North', 'Lucknow', 'Sticks', '₹5', 'Tomato', 90, 450, '2025-05-06'),
(1007, 'South', 'Hyderabad', 'Chips', '₹5', 'Masala', 100, 500, '2025-05-07'),
(1008, 'East', 'Patna', 'Chips', '₹10', 'Tomato', 140, 1400, '2025-05-08'),
(1009, 'West', 'Ahmedabad', 'Sticks', '₹5', 'Masala', 125, 625, '2025-05-09'),
(1010, 'North', 'Kanpur', 'Chips', '₹10', 'Tomato', 135, 1350, '2025-05-10'),
(1011, 'South', 'Bangalore', 'Chips', '₹5', 'Masala', 115, 575, '2025-05-11'),
(1012, 'East', 'Ranchi', 'Sticks', '₹10', 'Tomato', 155, 1550, '2025-05-12'),
(1013, 'West', 'Surat', 'Sticks', '₹10', 'Masala', 145, 1450, '2025-05-13'),
(1014, 'South', 'Coimbatore', 'Chips', '₹5', 'Tomato', 95, 475, '2025-05-14'),
(1015, 'North', 'Noida', 'Sticks', '₹10', 'Tomato', 105, 525, '2025-05-15'),
(1016, 'East', 'Cuttack', 'Chips', '₹10', 'Masala', 165, 1650, '2025-05-16'),
(1017, 'West', 'Pune', 'Sticks', '₹5', 'Tomato', 85, 425, '2025-05-17'),
(1018, 'North', 'Varanasi', 'Chips', '₹5', 'Masala', 75, 375, '2025-05-18'),
(1019, 'South', 'Vizag', 'Sticks', '₹10', 'Tomato', 95, 950, '2025-05-19'),
(1020, 'East', 'Guwahati', 'Chips', '₹5', 'Masala', 105, 525, '2025-05-20');


SELECT  SUM(Sales_Amount) AS TOTAL_REVENUE FROM britannia_sales ;
SELECT COUNT(Sales_units) as total_units_sold FROM britannia_sales;
SELECT Sales_Amount/Sales_units as average_revenue_per_unit from britannia_sales;
SELECT AVG(Sales_amount) as AOV from britannia_sales;