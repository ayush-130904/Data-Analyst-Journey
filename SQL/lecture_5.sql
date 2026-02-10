
CREATE TABLE Customer (
  C_Id INT PRIMARY KEY,
  Name VARCHAR(30) NOT NULL,
  City VARCHAR(10) DEFAULT("Kalyan"),
  Email VARCHAR(30) UNIQUE 
);

INSERT INTO Customer 
(C_Id, Name, Email) VALUES
(101, "Ayush", "ayush123@gmail.com"),
(102, "Asheesh", "asheesh123@gmail.com"),
(103, "Anish", "anish123@gmail.com"),
(104, "Yash", "yash123@gmail.com"),
(105, "Tanmay", "tanmay123@gmail.com"),
(106, "Geetesh", "geetesh123@gmail.com")
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


#Find the total sales amount for each Customer
SELECT C.Name, SUM(S.Sales_ammount) AS total_amount
FROM Customer AS C 
INNER JOIN Sales AS S
ON C.C_Id = S.C_Id
GROUP BY C.Name;

#Find the customer who have not done any sales
SELECT C.Name
FROM CUSTOMER C
LEFT JOIN Sales S
ON C.C_Id = S.C_Id
WHERE S.C_Id IS NULL;

#Find the customers whos category is furniture
SELECT C.Name
FROM CUSTOMER C
LEFT JOIN Sales S
ON C.C_Id = S.C_Id
WHERE S.Category = "Furniture";