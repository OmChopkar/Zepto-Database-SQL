drop table if exists Zepto;

--Create Table 
CREATE TABLE Zepto(
sku_id SERIAL PRIMARY KEY,
category VARCHAR(120),
name VARCHAR(120) NOT NULL,
mrp NUMERIC(8,2),
discountPercent NUMERIC(5,2),
availableQuantity INTEGER,
discountSellingPrice NUMERIC(8,2),
weightGrams INTEGER,
outOfStock BOOLEAN,
quantity INTEGER
);

--Exploring Database
--Count Rows
SELECT COUNT(*) FROM Zepto;

--Table Data
SELECT * FROM Zepto
LIMIT 10;

--Null Values
SELECT * FROM ZEPTO
WHERE 
category IS NULL
OR name IS NULL
OR mrp IS NULL
OR discountPercent IS NULL
OR availableQuantity IS NULL
OR discountSellingPrice IS NULL
OR weightGrams IS NULL
OR outOfStock IS NULL
OR Quantity IS NULL;

--Product Categories (No Duplicates)
SELECT DISTINCT category FROM Zepto
ORDER BY category;

--Product Stock
SELECT COUNT(sku_id), outOfStock FROM Zepto
GROUP BY outOfStock;

--Product Names with Counts
SELECT name, COUNT(sku_id) AS Number_of_SKUs
FROM Zepto
GROUP BY name
HAVING COUNT(sku_id)>1
ORDER BY COUNT(sku_id) DESC;

--Data Cleaning
--Product with MRP/DiscountSP 0
SELECT * FROM Zepto
WHERE mrp=0 OR discountSellingPrice=0;

--Deleting Row with MRP 0
DELETE FROM Zepto 
WHERE mrp=0;

--Converting Mrp Paise->Rs
UPDATE Zepto SET mrp=mrp/100.0, 
discountSellingPrice=discountSellingPrice/100.0;

--Insights
--Q1. Find the top 10 best-value products based on the discount percentage.
SELECT name,mrp,discountPercent FROM Zepto
ORDER BY discountPercent DESC
LIMIT 10;

--Q2.What are the Products with MRP greater than 300 but Out of Stock
SELECT DISTINCT name, mrp 
FROM Zepto
WHERE outOfStock=True AND mrp>300;

--Q3.Calculate Estimated Revenue for each category
SELECT category, 
SUM(discountSellingPrice * availableQuantity) AS total_revenue
FROM Zepto
GROUP BY category
ORDER BY total_revenue;

-- Q4. Find all products where MRP is greater than ₹500 and discount is less than 10%.
SELECT name,mrp,discountPercent FROM Zepto
WHERE mrp>500 AND discountPercent<10
ORDER BY MRP DESC;

-- Q5. Identify the top 5 categories offering the highest average discount percentage.
SELECT category, avg(discountPercent) AS Avg_Discount
FROM Zepto
GROUP BY category
ORDER BY Avg_Discount DESC
LIMIT 5;

-- Q6. Find the price per gram for products above 100g and sort by best value.
SELECT DISTINCT name, weightGrams, discountSellingPrice,
ROUND(discountSellingPrice/weightGrams,2) AS Price_Per_Grams
FROM Zepto
WHERE weightGrams>=100
ORDER BY Price_Per_Grams;

--Q7.What is the Total Inventory Weight Per Category 
SELECT category,
SUM(weightGrams * availableQuantity) AS total_weight
FROM zepto
GROUP BY category
ORDER BY total_weight;