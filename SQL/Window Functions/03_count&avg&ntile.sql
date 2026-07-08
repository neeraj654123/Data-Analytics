use dataanalytics;

--  NTILE 
SELECT EmployeeID, EmployeeName, Salary, 
NTILE(3) OVER(ORDER BY Salary DESC) 
AS Salary_Group FROM Employees;

-- AVERAGE
SELECT *,
floor(AVG(Salary) OVER(PARTITION BY Department))
AS Department_Average FROM Employees;

-- COUNT
SELECT *,
COUNT(*) OVER(PARTITION BY Department)
AS Total_Employees FROM Employees; 