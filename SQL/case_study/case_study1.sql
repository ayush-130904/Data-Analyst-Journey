CREATE TABLE Sales (
  sales_Id INT,
  product_name VARCHAR(30),
  category VARCHAR(30),
  region VARCHAR(10),
  sales_ammount INT,
  quantity INT,
  sale_date DATE
);

INSERT INTO Sales 
(sales_ID, product_name, category, region, sales_ammount, quantity, sale_date) VALUES
(1, "Laptop", "Electronics", "North", 85000, 2, "2024-01-12"),
(2, "Mouse", "Electronics", "South", 1200, 10, "2024-01-15"),
(3, "Keyboard", "Electronics", "East", 2500, 5, "2024-02-10"),
(4, "Desk Chair", "Furniture", "North", 4500, 4, "2024-02-14"),
(5, "Sofa", "Furniture", "West", 32000, 2, "2024-03-03"),
(6, "Notebook", "Stationery", "South", 800, 20, "2024-03-10"),
(7, "Pen", "Stationery", "East", 400, 50, "2024-03-12"),
(8, "Laptop", "Electronics", "West", 90000, 1, "2024-03-18"),
(9, "Desk Chair", "Furniture", "South", 4200, 3, "2024-03-25"),
(10, "Pen", "Stationery", "North", 500, 40, "2024-04-05");

SELECT * FROM Sales;

#Find Total Sales Amount For Each Category#
SELECT category, SUM(sales_ammount) AS total_ammount FROM Sales
GROUP BY category;

#Find Average Sales Amount For Each Region#
SELECT region, AVG(sales_ammount) AS average_ammount FROM Sales
GROUP BY region;

#Find how many sales were made in Each Category#
SELECT category, COUNT(*) AS total_sales FROM Sales
GROUP BY category;

#Find total quantity sold per region#
SELECT region, SUM(quantity) AS total_quantity FROM Sales
GROUP BY region;

#Find Maximum Sales Amount For Each Category#
SELECT category, MAX(sales_ammount) AS max_ammount FROM Sales
GROUP BY category;

#Find Minimum Sales Amount per region#
SELECT region, MIN(sales_ammount) AS min_ammount FROM Sales
GROUP BY region;

#Find Total Sales Amount For Each Product#
SELECT product_name, SUM(sales_ammount) AS total_ammount FROM Sales
GROUP BY product_name;

#Find Total Sales Amount For Each Category in each region#
SELECT region, category, SUM(sales_ammount) AS total_ammount FROM Sales
GROUP BY region, category;

#Find Average quantity sold per Category#
SELECT category, AVG(quantity) AS avg_quantity FROM Sales
GROUP BY category;

#Find the number of products sold in each region#
SELECT region, COUNT(DISTINCT product_name) AS product_count FROM Sales
GROUP BY region;

#Find the total sales amount for each month#
SELECT MONTH(sale_date), SUM(sales_ammount) AS total_ammount FROM Sales
GROUP BY MONTH(sale_date);

#Find Average sales amout per prodcut in each category#
SELECT product_name, category, AVG(sales_ammount) avg_ammount FROM Sales
GROUP BY product_name, category;

#Find Total quantity For Each Product#
SELECT product_name, SUM(quantity) AS total_quantity FROM Sales
GROUP BY product_name;

#Find the category that sold the maximum quantity overall#
SELECT MAX(quantity) AS highest_quanitity FROM Sales;        #wrong query#

#find total sales per region where category is Electronics#
SELECT region, category, SUM(sales_ammount) AS total_ammount FROM Sales
WHERE category="Electronics"
GROUP BY region, category;

#find Average sales ammount per Product where category is Furniture#
SELECT product_name, category, SUM(sales_ammount) AS avg_ammount FROM Sales
WHERE category="Furniture"
GROUP BY product_name, category;

#SHow total sales ammount for each region that sold more than 2 products#
SELECT region, COUNT(product_name), SUM(sales_ammount) AS total_ammount FROM Sales
WHERE COUNT(product_name) > 2
GROUP BY region;
