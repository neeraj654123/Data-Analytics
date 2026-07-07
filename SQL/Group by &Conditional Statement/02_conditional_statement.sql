-- Below Query categorizes sales based on Sales_Amount using CASE.
SELECT Product_Category,
       Sales_Amount,
       CASE
           WHEN Sales_Amount >= 2000 THEN 'High'
           WHEN Sales_Amount >= 900 THEN 'Medium'
           ELSE 'Low'
       END AS Sales_Remark
FROM classicmodels.sales_data;