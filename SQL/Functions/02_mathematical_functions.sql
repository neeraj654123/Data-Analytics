-- CEIL , FLOOR  
SELECT CEIL(12.34) AS Result;
SELECT FLOOR(12.34) AS Result;

-- RANDOM: RAND
SELECT RAND() AS Random_Number;
SELECT RAND(10) AS Random_Number;
SELECT FLOOR(RAND() * 100) + 1 AS Random_Number;
SELECT (RAND() * 100) + 1 AS Random_Number;


-- ROUND
SELECT ROUND(12.56) AS Result;
SELECT ROUND(12.5678, 2) AS Result;
SELECT ROUND(12.567864, 2,3) AS Result;

-- POWER    
SELECT POWER(2, 3) AS Result;
SELECT CustomerID, POWER(CustomerID, 2) AS Square FROM Customers;