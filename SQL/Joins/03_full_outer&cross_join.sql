-- Full Outer Join is not present in MySQL Workbench so we adds up left and right join
SELECT customers.CustomerID,
       customers.CustomerName,
       orders.Amount,
       orders.OrderDate
FROM customers
LEFT JOIN orders
ON customers.CustomerID = orders.CustomerID

UNION

SELECT customers.CustomerID,
       customers.CustomerName,
       orders.Amount,
       orders.OrderDate
FROM customers
RIGHT JOIN orders
ON customers.CustomerID = orders.CustomerID;

-- Cross Join
SELECT customers.CustomerID,
       customers.CustomerName,
       orders.Amount,
       orders.OrderDate,
       orders.OrderID
FROM customers
CROSS JOIN orders;