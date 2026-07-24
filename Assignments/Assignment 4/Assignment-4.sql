USE dataanalytics;

-- THis will create A table with column and datatypes as shown Below
/*
create Table  Employees(
EmpID INT PRIMARY KEY,
Name VARCHAR(50),
Department VARCHAR(30),
Salary DECIMAL(10,2))
*/

-- This will Insert the given data in the table
/*
Insert INTO Employees (EmpID, Name, Department, Salary) 
VALUES
   (1, 'John Doe', 'HR', 50000),
   (2, 'Jane Smith', 'IT', 60000),
   (3, 'Alice Johnson', 'Finance', 55000),
   (4, 'Bob Brown', 'HR', 45000),
   (5, 'Charlie White', 'IT', 65000);
   */
   
/*
Create Table Departments(
DeptID INT PRIMARY KEY,
DeptName VARCHAR(50),
Location VARCHAR(50));
Insert INTO Departments (DeptID, DeptName, Location)
VALUES 
	(101, 'Sales', 'New York');
*/

Select * from employees;
select * from departments;
select * from Employees WHERE Salary > 55000;