drop database if exists Zepto_SQL_Project;
create database Zepto_SQL_Project;
use  Zepto_SQL_Project;
drop table IF EXISTS Zepto;
create table Zepto(
sku_id INT auto_increment PRIMARY KEY,
category VARCHAR(120),
name VARCHAR (150),
MRP DECIMAL(8,2),
discountpercent DECIMAL(5,2),
available_quantity INT,
discounted_selling_price DECIMAL(8,2),
weightingrmas INT,
outofstock boolean,
quantity int);


-- DATA EXPLORATION--

-- COUNT OF ROWS
SELECT COUNT(*) FROM ZEPTO;

-- SAMPLE DATA
SELECT * FROM ZEPTO
LIMIT 10;

-- NULL VALUES
SELECT  * FROM ZEPTO
WHERE name IS NULL
OR category IS NULL
OR MRP IS NULL
OR discountpercent IS NULL
OR discounted_selling_price IS NULL
OR quantity IS NULL
OR weightingrmas IS NULL
OR outofstock IS NULL
OR available_quantity IS NULL;

-- DIFFERENT PRODUCT CATEGORY FROM ZEPTO
SELECT DISTINCT (category) as PRODUCT FROM ZEPTO
ORDER BY CATEGORY;

-- PRODUCT IN STOCK VS OUT OF STOCK
select outofstock, count(sku_id) from zepto
group by outofstock;

-- product count by product name
select name, count(sku_id) as no_of_products from zepto 
group by name
having no_of_products>1
order by no_of_products desc;

-- DATA CLEANING
SELECT * FROM ZEPTO 
WHERE MRP=0 OR discounted_selling_price=0;

DELETE FROM ZEPTO 
WHERE MRP=0;

SET SQL_SAFE_UPDATES=0;

-- CONVERT PAISA TO RUPEES
UPDATE zepto
SET MRP = MRP/100.0, discounted_selling_price = discounted_selling_price/100.0;

SELECT MRP, discounted_selling_price FROM ZEPTO;

select * from zepto;

-- 1. Find the top 10 best-value products based on the discount percentage.
select distinct(name) as product_name, MRP, discountpercent from zepto
order by discountpercent desc
limit 10;

-- 2. What are the products with high MRP but out of stock?
select distinct (name), MRP FROM ZEPTO 
WHERE outofstock=1
order by MRP DESC;

-- 3. Calculate estimated revenue for each category.
SELECT CATEGORY, 
SUM(discounted_selling_price*available_quantity) AS TOTAL_REVENUE
FROM ZEPTO 
GROUP BY CATEGORY
ORDER BY TOTAL_REVENUE;

-- 4. Find all products where MRP is greater than ₹500 and discount is less than 10%.
SELECT distinct(NAME),MRP,discountpercent FROM ZEPTO 
WHERE MRP > 500 AND discountpercent < 10
ORDER BY  MRP DESC, discountpercent DESC;


-- 5. Identify the top 5 categories offering the highest average discount percentage.
SELECT CATEGORY, round(AVG(discountpercent),2) AS AVG_DISCOUNT
FROM zepto
GROUP BY CATEGORY
ORDER BY AVG_DISCOUNT DESC
LIMIT 5;

-- 6. Find the price per gram for products above 100g and sort by best value.
SELECT distinct(NAME), discounted_selling_price, weightingrmas,
ROUND((discounted_selling_price/weightingrmas),2) AS PRICEPERGM
FROM ZEPTO 
WHERE weightingrmas>100 
ORDER BY PRICEPERGM;


-- 7. Group the products into categories like Low, Medium, Bulk BASED ON weightingrmas
SELECT distinct(NAME), weightingrmas,
CASE
WHEN weightingrmas<1000 THEN 'LOW'
WHEN weightingrmas BETWEEN 1000 AND 5000 THEN 'MEDIUM'
ELSE 'BULK'
END AS weightingrmas_CATEGORY
FROM ZEPTO;

-- 8. What is the total inventory weight per category?
SELECT CATEGORY, SUM(available_quantity * weightingrmas) AS TOTAL_QUANTITY
FROM ZEPTO 
GROUP BY CATEGORY
ORDER BY TOTAL_QUANTITY;


-- 9. Which category has the highest number of out of stock products?

SELECT category, COUNT(*) AS Out_Of_Stock_Count
FROM ZEPTO
WHERE outofstock=1
GROUP BY CATEGORY
ORDER BY COUNT(*) DESC
LIMIT 1;


-- 10. What is the total potential savings for customers per category?
 
SELECT category, SUM((MRP - discounted_selling_price) * available_quantity) AS CUSTOMER_SAVINGS
FROM ZEPTO
GROUP BY CATEGORY
ORDER BY CUSTOMER_SAVINGS DESC;