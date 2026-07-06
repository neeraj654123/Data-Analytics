-- Below query will set every Professor's email as Example@gmail.com but due to Unique Constraint It throw an error
update dataanalytics.professors
set email ='Example@gmail.com';

-- Below query will set Professor with PID as P1  email as Example@gmail.com 
update dataanalytics.professors
set email ='Example@gmail.com' where PID ='P1';

-- Below query will delete all rows from the table 
-- Delete from dataanalytics.professors;

-- Below query will  delete rows with PID = P4
Delete from dataanalytics.professors where PID='P4';


-- Note: Always remember to use condition while using Update and Delete because it can cause i huge problem by changing whole data  