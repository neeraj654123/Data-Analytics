-- Create Customers table
USE DataAnalytics;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName NVARCHAR(100),
    ContactNumber NVARCHAR(15)
);

-- Insert data into Customers table
INSERT INTO Customers (CustomerID, CustomerName, ContactNumber) VALUES
(1, 'John Doe', '123-456-7890'),
(2, 'Jane Smith', '234-567-8901'),
(3, 'Alice Johnson', '345-678-9012'),
(4, 'Bob Brown', '456-789-0123'),
(5, 'Carol White', '567-890-1234');

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    Amount DECIMAL(10, 2)
);

-- Insert data into Orders table
INSERT INTO Orders (OrderID, OrderDate, CustomerID, Amount) VALUES
(1, '2023-06-01', 1, 150.00),
(2, '2023-06-03', 2, 200.00),
(3, '2023-06-05', 3, 300.00),
(4, '2023-06-07', 6, 250.00), -- CustomerID 6 does not exist in Customers
(5, '2023-06-09', 7, 175.00); -- CustomerID 7 does not exist in Customers

SELECT * FROM Customers;
SELECT * FROM ORDERS;

-- FULL JOIN

SELECT 
    Customers.CustomerID, 
    Customers.CustomerName, 
    Orders.OrderID, 
    Orders.OrderDate, 
    Orders.Amount
FROM 
    Customers
FULL Outer JOIN 
    Orders ON Customers.CustomerID = Orders.CustomerID;

-- CROSS JOIN

SELECT 
    Customers.CustomerID AS CustID,
    Customers.CustomerName AS CustName,
    Orders.OrderID AS OrdID,
    Orders.OrderDate AS OrdDate,
    Orders.Amount AS OrdAmount
FROM 
    Customers
CROSS JOIN 
    Orders;

SELECT * FROM Customers;
SELECT * FROM Orders;





