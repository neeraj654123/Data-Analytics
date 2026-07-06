USE dataanalytics;

-- Create Professors Table
CREATE TABLE Professors(
PID NVARCHAR(20),
Fullname NVARCHAR(40),
Age INT,
DeptId NVARCHAR(20));

-- Create Department Table
CREATE TABLE Department(
DeptId NVARCHAR(20),
Deptname NVARCHAR(20));

-- Below Query will add Not NULL to PID's datatype
ALTER TABLE professors
MODIFY COLUMN PID NVARCHAR(20) NOT NULL;

-- Below Query will add Primary Key to Professor table
ALTER TABLE professors
ADD CONSTRAINT PK_Professor
PRIMARY KEY (PID);

-- Below Query will add Primary Key to Department table
ALTER TABLE department
ADD CONSTRAINT PK_Department
PRIMARY KEY (DeptId);

-- Below Query will add Foreign Key to DeptId
ALTER TABLE professors
ADD CONSTRAINT FK_professors
FOREIGN KEY (DeptId)
REFERENCES department(DeptId);

-- Below Query will add Check Constraint to Professor table
ALTER TABLE professors
ADD CONSTRAINT CHK_Age
CHECK (Age >= 18);

-- Below Query will remove Check Constraint from Professor table
ALTER TABLE professors
DROP CHECK CHK_Age;

-- Below Query will remove Foreign Key from Professor table
ALTER TABLE professors
DROP FOREIGN KEY FK_professors;

-- Below Query will remove Primary Key from Professor table
ALTER TABLE professors
DROP PRIMARY KEY;

-- Below Query will remove Primary Key from Department table
ALTER TABLE department
DROP PRIMARY KEY;