-- Subqueries

-- Where Clause
select * from customers 
where CustomerID in (
Select CustomerID from orders 
where Amount>200);

-- From Clause
SELECT c.CustomerID,
       c.CustomerName,
       c.ContactNumber,
       TotalOrders.TotalAmount
FROM Customers c
JOIN
(SELECT CustomerID,
	SUM(Amount) AS TotalAmount
    FROM Orders
    GROUP BY CustomerID) AS TotalOrders
ON c.CustomerID = TotalOrders.CustomerID;

-- Select clause
-- Display customer details along with total orders and total amount spent.
SELECT
    c.CustomerID,
    c.CustomerName,
    c.ContactNumber,

    -- Count the number of orders for each customer
    (
        SELECT COUNT(*)
        FROM Orders o
        WHERE o.CustomerID = c.CustomerID
    ) AS TotalOrders,

    -- Calculate the total amount spent by each customer
    (
        SELECT COALESCE(SUM(o.Amount), 0)
        FROM Orders o
        WHERE o.CustomerID = c.CustomerID
    ) AS TotalAmountSpent

FROM Customers c; 
 