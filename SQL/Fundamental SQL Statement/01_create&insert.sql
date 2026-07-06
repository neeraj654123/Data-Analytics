CREATE DATABASE dataanalytics;
USE dataanalytics;
CREATE TABLE department (
    Dept_Id VARCHAR(5) PRIMARY KEY,
    Dept_Name VARCHAR(50),
    Location VARCHAR(50));

INSERT INTO department (Dept_Id, Dept_Name, Location)
VALUES
('D1', 'Computer Science', 'Block A'),
('D2', 'Mathematics', 'Block B'),
('D3', 'Physics', 'Block C');

CREATE TABLE professors (
    PID VARCHAR(5) PRIMARY KEY,
    Full_name VARCHAR(50),
    Age INT,
    Dept_Id VARCHAR(5),
    FOREIGN KEY (Dept_Id) REFERENCES department(Dept_Id)
);

INSERT INTO professors (PID, Full_name, Age, Dept_Id)
VALUES
('P1', 'Rohan Kumar', 25, 'D1'),
('P2', 'Rajesh', NULL, 'D1');



