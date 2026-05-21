-- Databricks notebook source
Select *
FROM retail.sales.sales_data
Limit 100;

---Filtering by product Category excluding clothing--

Select *
From retail.sales.sales_data
Where `Product Category` != 'Clothing';

---Selecting few coloumns with condition--

SELECT `Customer ID`,Date,gender,Quantity
FROM retail.sales.sales_data
Where Quantity >2;

Select *
FROM retail.sales.sales_data;

---Aggregates--
Select Count(`Transaction ID`) AS Total_Trans
from retail.sales.sales_data;

--Group By --
Select *
FROM retail.sales.sales_data
Limit 100;


SELECT SUM(`Total Amount`) AS total_Rev,`Product Category`
FROM retail.sales.sales_data
Group By`Product Category`;

---Including  Having statement--
SELECT `Product Category`,sum(`Total Amount`) as total_Rev
from retail.sales.sales_data
Group by `Product Category`
Having total_Rev >=150000;
