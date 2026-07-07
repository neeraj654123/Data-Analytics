-- Below queries use order by command to arrange data in ascending and descending by employeeNumber
SELECT * FROM classicmodels.employees order by employeeNumber DESC;
SELECT * FROM classicmodels.employees order by employeeNumber ASC;

-- -- Below Query uses order by to display all employee records sorted by FirstName (Ascending) and Extension (Descending).If multiple employees have the same FirstName,they are further sorted by Extension in descending order.
SELECT * FROM classicmodels.employees order by firstName ASC,extension desc;

-- Below query uses limit to display 5 records of employees table with highest extension
SELECT * FROM employees ORDER BY extension DESC LIMIT 5;

-- Below query uses limit to display first 5 records of employees table
SELECT * FROM Employees LIMIT 5;

-- Below query will display employeeNumber as EIP in employees table
select employeeNumber as EID from classicmodels.employees;