use dataanalytics;

-- Both SELECT statements must have the same structure if we are using Intersect, Except, Union All otherwise it will throw an error

-- Intersect: Returns only the rows common to both queries.
select CustomerID from customers
intersect
select CustomerID from orders;

-- Except: Returns rows from the first query that are not in the second query.
select CustomerID from customers
Except
select CustomerID from orders;

-- Union: Combines rows from both queries and removes duplicates.
select CustomerID from customers
union
select CustomerID from orders;

-- Union All: Combines all rows, including duplicates.  
select CustomerID from customers
Union All
select CustomerID from orders;