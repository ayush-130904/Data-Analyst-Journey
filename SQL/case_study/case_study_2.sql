CREATE TABLE Customer (
  C_Id INT PRIMARY KEY,
  Name VARCHAR(30) NOT NULL,
  City VARCHAR(10) DEFAULT("Kalyan"),
  Email VARCHAR(30) UNIQUE 
);

INSERT INTO Customer 
(C_Id, Name, City ,Email) VALUES
(101, "Ayush", "Dombivli","ayush123@gmail.com"),
(102, "Asheesh", DEFAULT,"asheesh123@gmail.com"),
(103, "Anish", "Thane","anish123@yahoo.com"),
(104, "Yash", "Mumbai","yash123@gmail.com"),
(105, "Tanmay", DEFAULT,"tanmay123@yahoo.com"),
(106, "Geetesh", DEFAULT,"geetesh123@gmail.com")
;

SELECT * FROM Customer;


CREATE TABLE Sales (
  Sales_Id INT PRIMARY KEY,
  Product VARCHAR(30) UNIQUE,
  Category VARCHAR(30) NOT NULL,
  Sales_ammount INT CHECK(Sales_ammount>0),
  C_Id INTEGER,
  foreign key (C_Id) references Customer(C_Id)
);

INSERT INTO Sales 
(Sales_ID, Product, Category, Sales_ammount, C_Id) VALUES
(1, "Laptop", "Electronics", 85000, 101 ),
(2, "Mouse", "Electronics", 1200, 102),
(3, "Keyboard", "Electronics", 2500, 103),
(4, "Desk Chair", "Furniture",  4500, 104),
(5, "Sofa", "Furniture", 32000, 105),
(6, "Notebook", "Stationery", 800, 102),
(7, "Pen", "Stationery", 400, 103),
(8, "Mobile", "Electronics", 90000, 104),
(9, "Desk", "Furniture", 4200, 101),
(10, "Pencil", "Stationery",  500, 105);

SELECT * FROM Sales;

#Show the Sales details whose city is Mumbai
SELECT C.C_Id, C.Name, C.City, S.* 
FROM Customer C 
INNER JOIN Sales S
ON C.C_Id = S.C_Id
WHERE C.City = "Mumbai";

#Show Electronics Category Sales for customers from Kalyan
SELECT C.C_Id, C.Name, C.City, S.* 
FROM Customer C 
INNER JOIN Sales S
ON C.C_Id = S.C_Id
WHERE S.Category = "Electronics" AND C.City = "Kalyan";

#Display customer name and product where sales ammount is greater than 5000
SELECT C.C_Id, C.Name, S.Product 
FROM Customer C 
INNER JOIN Sales S
ON C.C_Id = S.C_Id
WHERE S.Sales_ammount > 5000;

#Show Total Sales of Customers who use @gmail.com
SELECT C.C_Id, C.Name, C.Email, SUM(S.Sales_ammount) AS total_ammount
FROM Customer C 
INNER JOIN Sales S
ON C.C_Id = S.C_Id
WHERE C.Email LIKE '%gmail%'
GROUP BY C.C_Id, C.Name, C.Email;

#Find Which Customers purchased the Laptop
SELECT C.C_Id, C.Name, S.Product
FROM Customer C
INNER JOIN Sales S
ON C.C_Id = S.C_Id
WHERE S.Product = "Laptop";

#Find Total Sales For Each Customer
SELECT C.Name, SUM(S.Sales_ammount) AS total_ammount
FROM Customer C
INNER JOIN Sales S
ON C.C_Id = S.C_Id
GROUP BY C.Name;

#Find total Sales For each city
SELECT C.City, SUM(S.Sales_ammount) AS total_ammount
FROM Customer C
INNER JOIN Sales S
ON C.C_Id = S.C_Id
GROUP BY C.City;

#Find total Sales For each Category
SELECT Category, SUM(Sales_ammount) AS total_ammount
FROM Sales 
GROUP BY Category;

#Find how many product each costomer purchased
SELECT C.C_Id, C.Name, COUNT(S.Product) AS total_product_purchased
FROM Customer C
INNER JOIN Sales S
ON C.C_Id = S.C_Id
GROUP BY C.C_Id, C.Name;

#Count Number of Sales per City
SELECT C.City, COUNT(S.Sales_ID) AS total_product_purchased
FROM Customer C
INNER JOIN Sales S
ON C.C_Id = S.C_Id
GROUP BY C.City;

#Display customer whose total sales are greater than 10000
SELECT C.C_Id, C.Name, SUM(S.Sales_ammount) AS total_ammount
FROM Customer C 
INNER JOIN Sales S
ON C.C_Id = S.C_Id
GROUP BY C.C_Id, C.Name
HAVING SUM(S.Sales_ammount) > 10000;
