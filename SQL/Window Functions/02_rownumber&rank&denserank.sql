use dataanalytics;

-- ROW_NUMBER()
select * from (
select *,row_number()
over(partition by department order by salary desc) as row_num 
from employees) as subquery where row_num=1; 

-- RANK 
SELECT EmployeeID, EmployeeName, Department, Salary,
RANK() OVER(ORDER BY Salary DESC) AS Salary_Rank
FROM Employees; 

-- DENSERANK
SELECT EmployeeID, EmployeeName, Department, Salary,
DENSE_RANK() OVER(ORDER BY Salary DESC) AS DenseRank
FROM Employees;