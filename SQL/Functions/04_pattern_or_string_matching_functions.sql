-- PATTERN(STRING) MATCHING

-- LIKE
SELECT * FROM Customers WHERE CustomerName LIKE 'J%'; 
SELECT * FROM Customers WHERE CustomerName LIKE '%n';
SELECT * FROM Customers WHERE CustomerName LIKE '%an%';
SELECT * FROM Customers WHERE CustomerName LIKE 'J_n';

-- REGEXP
SELECT * FROM Customers WHERE CustomerName REGEXP '^J';
SELECT * FROM Customers WHERE CustomerName REGEXP 'n$';
SELECT * FROM Customers WHERE CustomerName REGEXP 'an';
SELECT * FROM Customers WHERE CustomerName REGEXP '^[ABC]';

-- LOCATE 
SELECT LOCATE('John', 'My name is John Doe') AS Position;
SELECT INSTR('My name is John Doe', 'John') AS Position;

-- REGEXP_LIKE
SELECT REGEXP_LIKE('John Doe', '^John') AS Result;

-- LEFT, RIGHT , SUBSTRING
SELECT LEFT('Hello World', 5) AS Result;
SELECT RIGHT('Hello World', 5) AS Result;
SELECT LEFT('Database', 4) AS Left_Text,
       RIGHT('Database', 4) AS Right_Text,
       SUBSTRING('Database', 3, 4) AS Middle_Text;

