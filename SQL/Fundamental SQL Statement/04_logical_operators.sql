-- Logical Operators

-- Below Both of the queries gives us data of Professors whose age is less than 30 and Dept_Id is D1
select * from dataanalytics.professors where Age <30 and Dept_Id='D1';
select * from dataanalytics.professors where Age <30 && Dept_Id='D1';

-- Below Both of the queries gives us data of Professors whose age is less than 30 or Dept_Id is D1
select * from dataanalytics.professors where Age <30 or Dept_Id='D1';
select * from dataanalytics.professors where Age <30 || Dept_Id='D1';

-- Below Both of the queries gives us data of Professors whose  Dept_Id is not D1
select * from dataanalytics.professors where Dept_Id !='D1';
select * from dataanalytics.professors where not Dept_Id ='D1';