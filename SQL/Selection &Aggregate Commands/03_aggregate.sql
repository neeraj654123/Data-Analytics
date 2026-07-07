-- Below query uses count command to count total no. of EmployeeNumber and employeeNumber with officeCode 1
select count(employeeNumber) from classicmodels.employees;
select count(employeeNumber) from classicmodels.employees where officeCode =1;

-- Below query uses SUM command to find SUM of total Quantity_sold
select sum(Quantity_sold) from classicmodels.sales_data;

-- Below query uses AVG command to find Average of total Quantity_sold
select avg(Quantity_sold) from classicmodels.sales_data;

-- Below query uses MIN & MAX command to find Minimun and Maximum product sold by salesman
select min(Quantity_sold) from classicmodels.sales_data;
select max(Quantity_sold) from classicmodels.sales_data;

