use dataanalytics;

-- Inner Join 
select customers.CustomerID,
customers.CustomerName,
orders.Amount,
orders.OrderDate
from customers
inner join
orders on customers.CustomerID=orders.CustomerID;

-- Left Join
 select customers.CustomerID,
customers.CustomerName,
orders.Amount,
orders.OrderDate
from customers
Left join
orders on customers.CustomerID=orders.CustomerID;

-- Right Join 
 select customers.CustomerID,
customers.CustomerName,
orders.Amount,
orders.OrderDate
from customers
Right join
orders on customers.CustomerID=orders.CustomerID;