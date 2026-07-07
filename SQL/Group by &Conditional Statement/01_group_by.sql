-- Below Query displays the maximum Quantity_Sold for each Region and sorts the result by maximum quantity sold.
SELECT Region,
       MAX(Quantity_Sold) AS Max_Quantity
FROM classicmodels.sales_data
GROUP BY Region
ORDER BY Max_Quantity;

-- Below Query displays the maximum Quantity_Sold and maximum Sales_Amount for each Region and sorts the result by maximum Sales_Amount.
SELECT Region,
       MAX(Quantity_Sold) AS Max_Quantity,
       MAX(Sales_Amount) AS Max_Sales
FROM classicmodels.sales_data
GROUP BY Region
ORDER BY Max_Sales;

-- Below Query displays the maximum Quantity_Sold and total Sales_Amount for each Region and sorts the result by total Sales_Amount.
SELECT Region,
       MAX(Quantity_Sold) AS Max_Quantity,
       SUM(Sales_Amount) AS Total_Sales
FROM classicmodels.sales_data
GROUP BY Region
ORDER BY Total_Sales;

-- Below Query displays Regions where the maximum Quantity_Sold is greater than 100.
SELECT Region,
       MAX(Quantity_Sold) AS Max_Quantity
FROM classicmodels.sales_data
GROUP BY Region
HAVING MAX(Quantity_Sold) > 24;

-- Below Query displays Regions where the total Sales_Amount is greater than 50000.
SELECT Region,
       SUM(Sales_Amount) AS Total_Sales
FROM classicmodels.sales_data
GROUP BY Region
HAVING SUM(Sales_Amount) > 2000;