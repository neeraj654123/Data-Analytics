use dataanalytics;

-- CAST:Convert a string to an integer & integer to a string & integer to a decimal & string to a DATE,DATETIME
SELECT CAST('123' AS SIGNED) AS Number; 
SELECT CAST(123 AS CHAR) AS Text;
SELECT CAST(123 AS DECIMAL(10,2)) AS Decimal_Value;
SELECT CAST('2026-07-08' AS DATE) AS Joining_Date;
SELECT CAST('2026-07-08' AS DATETIME) AS Joining_Date;

-- CONVERT: Convert decimal to character & string to decimal, date, datetime, time, year, binary
SELECT CONVERT(123.45, CHAR) AS Text;
SELECT CONVERT('123.4567', DECIMAL(10,2)) AS Decimal_Value;
SELECT CONVERT('2026-07-08', DATE) AS Joining_Date; 
SELECT CONVERT('2026-07-08 10:30:45', DATETIME) AS Date_Time;
SELECT CONVERT('10:30:45', TIME) AS Office_Time;
SELECT CONVERT('2026', year) AS Joining_Year;
SELECT CONVERT('Hello', BINARY) AS Binary_Value; 