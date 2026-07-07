use classicmodels;

 select * from employees;
 
 -- Below query Uses in command to get data of employees whoose officeCode is 1 and 2 
 select * from employees where officeCode in(1,2);
 
  -- Below query Uses Between command to get data of employees whoose employeeNumber is between 1300 and 140
  select * from employees where employeeNumber between 1300 and 1400;
    -- Below query Uses Between command to get data of employees whoose employeeNumber is not between 1300 and 1400
  select * from employees where employeeNumber not between 1300 and 1400;
  
   -- Below query Uses Like command to get data of employees whoose firstName Starts with 'A' 
   select * from employees where firstName like "A%"; 
      -- Below query Uses Like command to get data of employees whoose firstName 2nd character is 'a' 
   select * from employees where firstName like "_a%"; 
      -- Below query Uses Like command to get data of employees whoose firstName contains 'a' at any place 
   select * from employees where firstName like "%a%"; 
      -- Below query Uses Like command to get data of employees whoose firstName ends with 'a%'
   select * from employees where firstName like "%a\%"; 