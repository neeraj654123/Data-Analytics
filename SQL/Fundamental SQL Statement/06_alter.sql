-- Below query will add a new column name Address to professors table with dataype nvarchar(60) 
Alter table dataanalytics.professors
Add Address nvarchar(60);

-- Below query will delete or remove a column with name Address to professors table
Alter table dataanalytics.professors
Drop column Address;

-- Below query will change a column with name Age's Datatype to nvarchar(50)
Alter table dataanalytics.professors
modify column Age nvarchar(50);

-- Below queries will change a column's name with name email to Email and Age to Professor_Age also Datatype to int 
Alter table dataanalytics.professors
Rename column email to Email;
ALTER TABLE dataanalytics.professors
CHANGE COLUMN Age Professor_Age INT;




