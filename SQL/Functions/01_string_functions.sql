use dataanalytics;

-- Char_lenght 
select char_length(CustomerName) as lenght from customers order by char_length(CustomerName);
select char_length("Hello");

-- Upper
select upper(CustomerName) as upper from customers order by char_length(CustomerName);
 select upper("rohan");

-- Lower
select Lower(CustomerName) as lower from customers order by char_length(CustomerName);
 select lower("ROHAN");
 
 -- Replace
select CustomerID,replace(CustomerName,'John Doe','John') as New_name from customers;
SELECT REPLACE('Hello World', 'World', 'MySQL') AS Result;

-- TRIM: Ltrim , Rtrim
SELECT TRIM('   Hello MySQL   ') AS Result;
SELECT LTRIM('   Hello MySQL            ') AS Result;
SELECT RTRIM('            Hello MySQL   ') AS Result;

-- Concatenation: CONCAT , CONCAT_WS
SELECT CONCAT('Hello', ' ', 'World') AS Result;
SELECT CONCAT('Mr. ', CustomerName) AS Full_Name FROM Customers; 
SELECT CONCAT_WS(', ', 'John Doe', 'Delhi', 'India') AS Address;

-- SUBSTRING
SELECT SUBSTRING('Hello World', 1, 5) AS Result;
SELECT CustomerID, CustomerName, SUBSTRING(CustomerName, 1, 4) AS Short_Name FROM Customers; 

-- LIST AGGREGATION: GROUP_CONCAT() 
select Sales_Rep,GROUP_CONCAT(Sale_Date) as order_date_list from classicmodels.sales_data GROUP BY Sales_Rep;