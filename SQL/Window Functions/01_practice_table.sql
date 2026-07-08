-- Create Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);

-- Insert sample records into Employees table
INSERT INTO Employees (EmployeeID, EmployeeName, Department, Salary)
VALUES
(101, 'John Doe',     'HR',        50000.00),
(102, 'Jane Smith',   'HR',        60000.00),
(103, 'Alice Johnson','IT',        75000.00),
(104, 'Bob Brown',    'IT',        80000.00),
(105, 'Charlie Davis','Finance',   70000.00),
(106, 'David Wilson', 'Finance',   72000.00),
(107, 'Emma Thomas',  'Marketing', 55000.00),
(108, 'Frank Miller', 'Marketing', 58000.00),
(109, 'Grace Lee',    'IT',        90000.00),
(110, 'Henry Clark',  'HR',        52000.00);

-- Display all records
SELECT * FROM Employees;