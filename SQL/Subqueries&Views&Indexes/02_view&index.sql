-- VIEW 

-- Create a view to display customer names and contact numbers.
CREATE Or REPLACE VIEW CustomerView AS
SELECT CustomerID,
       CustomerName,
       ContactNumber
FROM Customers;

-- Display all records from the view.
SELECT *
FROM CustomerView;


-- INDEX
CREATE UNIQUE INDEX idx_contactnumber
ON orders(OrderDate); 
