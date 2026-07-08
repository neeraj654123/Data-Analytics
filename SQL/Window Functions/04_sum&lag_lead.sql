use dataanalytics;

-- SUM: Total ,Running total
SELECT *,
SUM(Salary) OVER(PARTITION BY Department)
AS Department_Total FROM Employees; 
SELECT *,
SUM(Salary) OVER(PARTITION BY Department ORDER BY Salary)
AS Running_Total FROM Employees;
 
 --  LAG , LEAD
 SELECT *,
LAG(Salary) OVER(PARTITION BY Department ORDER BY Salary)
AS Previous_Salary,
LEAD(Salary) OVER(PARTITION BY Department ORDER BY Salary)
AS Next_Salary FROM Employees;