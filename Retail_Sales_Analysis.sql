CREATE DATABASE retail_sales;
USE retail_sales;

# 1. Customers Table
CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    City VARCHAR(50),
    Region VARCHAR(50)
);

# 2. Products Table
CREATE TABLE Products (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Cost_Price DECIMAL(10,2)
);

# 3. Orders Table
CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT,
    Order_Date DATE,
    Payment_Method VARCHAR(50),
    FOREIGN KEY (Customer_ID)
        REFERENCES Customers(Customer_ID)
);

# 4. Order Details Table
CREATE TABLE Order_Details (
    Order_Detail_ID INT PRIMARY KEY,
    Order_ID INT,
    Product_ID INT,
    Quantity INT,
    Unit_Price DECIMAL(10,2),
    Discount DECIMAL(5,2),
    FOREIGN KEY (Order_ID)
        REFERENCES Orders(Order_ID),
    FOREIGN KEY (Product_ID)
        REFERENCES Products(Product_ID)
);

# 5. Payments Table
CREATE TABLE Payments (
    Payment_ID INT PRIMARY KEY,
    Order_ID INT,
    Payment_Date DATE,
    Payment_Method VARCHAR(50),
    Payment_Amount DECIMAL(10,2),
    Payment_Status VARCHAR(20),
    FOREIGN KEY (Order_ID)
        REFERENCES Orders(Order_ID)
);

# CUSTOMER TABLE
INSERT INTO Customers VALUES
#(1, 'Ravi', 'Hyderabad', 'South'),
(2, 'Priya', 'Chennai', 'South'),
(3, 'Rahul', 'Mumbai', 'West'),
(4, 'Sneha', 'Delhi', 'North'),
(5, 'Arjun', 'Bengaluru', 'South'),
(6, 'Divya', 'Pune', 'West'),
(7, 'Kiran', 'Kolkata', 'East'),
(8, 'Anu', 'Vijayawada', 'South'),
(9, 'Vikram', 'Jaipur', 'North'),
(10, 'Meena', 'Kochi', 'South'),
(11, 'Suresh', 'Ahmedabad', 'West'),
(12, 'Pooja', 'Lucknow', 'North'),
(13, 'Manoj', 'Patna', 'East'),
(14, 'Lakshmi', 'Warangal', 'South'),
(15, 'Amit', 'Bhopal', 'Central'),
(16, 'Neha', 'Mysuru', 'South'),
(17, 'Rohit', 'Surat', 'West'),
(18, 'Swathi', 'Guntur', 'South'),
(19, 'Ajay', 'Ranchi', 'East'),
(20, 'Kavya', 'Visakhapatnam', 'South');

 #VALUES TABLE
INSERT INTO Products VALUES
(101, 'Laptop', 'Electronics', 40000.00),
(102, 'Mobile', 'Electronics', 15000.00),
(103, 'Television', 'Electronics', 25000.00),
(104, 'Refrigerator', 'Appliances', 22000.00),
(105, 'Washing Machine', 'Appliances', 18000.00),
(106, 'Microwave', 'Appliances', 7000.00),
(107, 'Headphones', 'Accessories', 1000.00),
(108, 'Keyboard', 'Accessories', 800.00),
(109, 'Mouse', 'Accessories', 400.00),
(110, 'Printer', 'Electronics', 6000.00),
(111, 'Tablet', 'Electronics', 12000.00),
(112, 'Air Conditioner', 'Appliances', 30000.00),
(113, 'Mixer', 'Appliances', 2500.00),
(114, 'Iron Box', 'Appliances', 1200.00),
(115, 'Speaker', 'Accessories', 2000.00),
(116, 'Smart Watch', 'Accessories', 3500.00),
(117, 'Camera', 'Electronics', 28000.00),
(118, 'Power Bank', 'Accessories', 1500.00),
(119, 'Monitor', 'Electronics', 9000.00),
(120, 'Rice Cooker', 'Appliances', 1800.00);

#3. ORDERS TABLE
INSERT INTO Orders VALUES
(1001, 1, '2022-03-15', 'UPI'),
(1002, 2, '2023-05-20', 'Cash'),
(1003, 3, '2024-01-10', 'Credit Card'),
(1004, 4, '2025-07-25', 'Debit Card'),
(1005, 5, '2026-02-12', 'UPI'),
(1006, 6, '2022-08-18', 'Cash'),
(1007, 7, '2023-11-05', 'Credit Card'),
(1008, 8, '2024-04-22', 'UPI'),
(1009, 9, '2025-09-14', 'Debit Card'),
(1010, 10, '2026-03-08', 'Cash'),
(1011, 11, '2022-12-30', 'UPI'),
(1012, 12, '2023-06-16', 'Credit Card'),
(1013, 13, '2024-10-09', 'Cash'),
(1014, 14, '2025-01-27', 'Debit Card'),
(1015, 15, '2026-05-19', 'UPI'),
(1016, 16, '2022-02-11', 'Cash'),
(1017, 17, '2023-08-23', 'Credit Card'),
(1018, 18, '2024-12-04', 'UPI'),
(1019, 19, '2025-04-17', 'Debit Card'),
(1020, 20, '2026-07-21', 'Cash');

# ORDER DETAILS TABLE

INSERT INTO Order_Details VALUES
(1, 1001, 101, 1, 45000.00, 5.00),
(2, 1002, 102, 2, 18000.00, 10.00),
(3, 1003, 103, 1, 28000.00, 5.00),
(4, 1004, 104, 1, 25000.00, 8.00),
(5, 1005, 105, 1, 20000.00, 5.00),
(6, 1006, 106, 2, 8000.00, 0.00),
(7, 1007, 107, 3, 1200.00, 5.00),
(8, 1008, 108, 2, 1000.00, 0.00),
(9, 1009, 109, 2, 500.00, 0.00),
(10, 1010, 110, 1, 7000.00, 10.00),
(11, 1011, 111, 1, 14000.00, 5.00),
(12, 1012, 112, 1, 35000.00, 10.00),
(13, 1013, 113, 2, 3000.00, 5.00),
(14, 1014, 114, 3, 1500.00, 0.00),
(15, 1015, 115, 2, 2500.00, 5.00),
(16, 1016, 116, 1, 4000.00, 0.00),
(17, 1017, 117, 1, 32000.00, 8.00),
(18, 1018, 118, 2, 1800.00, 5.00),
(19, 1019, 119, 1, 10000.00, 5.00),
(20, 1020, 120, 2, 2200.00, 0.00);

# PAYMENTS TABLE
INSERT INTO Payments VALUES
(1, 1001, '2022-03-15', 'UPI', 18000.00, 'Paid'),
(2, 1002, '2023-05-20', 'Cash', 25000.00, 'Paid'),
(3, 1003, '2024-01-10', 'Credit Card', 45000.00, 'Paid'),
(4, 1004, '2025-07-25', 'Debit Card', 32000.00, 'Paid'),
(5, 1005, '2026-02-12', 'UPI', 15000.00, 'Paid'),
(6, 1006, '2022-08-18', 'Cash', 12000.00, 'Paid'),
(7, 1007, '2023-11-05', 'Credit Card', 28000.00, 'Paid'),
(8, 1008, '2024-04-22', 'UPI', 35000.00, 'Paid'),
(9, 1009, '2025-09-14', 'Debit Card', 22000.00, 'Pending'),
(10, 1010, '2026-03-08', 'Cash', 18000.00, 'Paid'),
(11, 1011, '2022-12-30', 'UPI', 42000.00, 'Paid'),
(12, 1012, '2023-06-16', 'Credit Card', 16000.00, 'Paid'),
(13, 1013, '2024-10-09', 'Cash', 27000.00, 'Failed'),
(14, 1014, '2025-01-27', 'Debit Card', 33000.00, 'Paid'),
(15, 1015, '2026-05-19', 'UPI', 19000.00, 'Paid'),
(16, 1016, '2022-02-11', 'Cash', 24000.00, 'Pending'),
(17, 1017, '2023-08-23', 'Credit Card', 38000.00, 'Paid'),
(18, 1018, '2024-12-04', 'UPI', 21000.00, 'Paid'),
(19, 1019, '2025-04-17', 'Debit Card', 29000.00, 'Paid'),
(20, 1020, '2026-07-21', 'Cash', 14000.00, 'Paid');
SELECT * FROM Customers;

SELECT * FROM Products;

SELECT * FROM Orders;

SELECT * FROM Order_Details;

SELECT * FROM Payments;




# QUERIES

#1.Display products costing more than ₹10,000
SELECT * FROM Products
WHERE Cost_Price > 10000;

#2. Display customers from the South region
SELECT * FROM Customers
WHERE Region = 'South';

#3. Display orders placed after January 10, 2026
SELECT * FROM Orders
WHERE Order_Date > '2026-01-10';

#4. Display products with a cost price between ₹1,000 and ₹10,000
SELECT * FROM Products
WHERE Cost_Price BETWEEN 1000 AND 10000;

#5. Find orders placed during 2025
SELECT *
FROM orders
WHERE order_date BETWEEN '2025-01-01' AND '2025-12-31';

# Aggregate Functions
#6. Count the total number of customers
SELECT COUNT(*) AS Total_Customers
FROM Customers;

# 7. Find the average product cost price
SELECT AVG(Cost_Price) AS Average_Cost
FROM Products;

#8. Find the most expensive product
SELECT Product_Name, Cost_Price
FROM Products
ORDER BY Cost_Price DESC
LIMIT 1;

#9. Calculate the total quantity of products ordered
SELECT SUM(Quantity) AS Total_Quantity
FROM Order_Details;

#10. Find the total amount received from successful payments
SELECT SUM(Payment_Amount) AS Total_Payments
FROM Payments
WHERE Payment_Status = 'Paid';

# GroupBy Queries
#11. Count customers in each region
SELECT Region, COUNT(*) AS Total_Customers
FROM Customers
GROUP BY Region;

#12. Count products in each category
SELECT Category, COUNT(*) AS Total_Products
FROM Products
GROUP BY Category;

#13. Calculate total payments by payment method
SELECT Payment_Method,
       SUM(Payment_Amount) AS Total_Amount
FROM Payments
WHERE Payment_Status = 'Paid'
GROUP BY Payment_Method;

#14. Display payment counts by status
SELECT Payment_Status, COUNT(*) AS Total_Payments
FROM Payments
GROUP BY Payment_Status;

# JOIN QUERIES
#15. Display customer names with their order IDs
SELECT C.Name, O.Order_ID, O.Order_Date
FROM Customers C
JOIN Orders O
ON C.Customer_ID = O.Customer_ID;

#16. Display product names with quantity and selling price
SELECT P.Product_Name, OD.Quantity, OD.Unit_Price
FROM Products P
JOIN Order_Details OD
ON P.Product_ID = OD.Product_ID;

#17. Display order IDs with customer names and cities
SELECT O.Order_ID, C.Name, C.City
FROM Orders O
JOIN Customers C
ON O.Customer_ID = C.Customer_ID;

#18. Display payment details with customer names
SELECT C.Name, O.Order_ID, P.Payment_Amount, P.Payment_Status
FROM Customers C
JOIN Orders O
ON C.Customer_ID = O.Customer_ID
JOIN Payments P
ON O.Order_ID = P.Order_ID;

#19. Total sales
SELECT SUM(Quantity * Unit_Price * (1 - Discount / 100))
       AS Total_Sales
FROM Order_Details;

#20. Find products whose selling price is higher than their cost price
SELECT P.Product_Name,
       P.Cost_Price,
       OD.Unit_Price
FROM Products P
JOIN Order_Details OD
ON P.Product_ID = OD.Product_ID
WHERE OD.Unit_Price > P.Cost_Price;
