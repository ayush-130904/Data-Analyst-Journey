show databases;
CREATE DATABASE ayush;
use ayush;
Show tables;
CREATE TABLE Students
(
Roll_no int,
Name VARCHAR(30),
Age int,
Marks int,
Email VARCHAR(30),
City VARCHAR(30)
);
DESC Students;        #to show info for that table

INSERT INTO Students
(Roll_no, Name, Age, Marks, Email, City) VALUES
(101, "Yash", 21, 90, "yash123@gmail.com", "Kalyan"),
(102, "Ashesh", 21, 75, "ashesh123@gmail.com", "Kalyan"),
(103, "Ritesh", 21, 80, "ritesh123@gmail.com", "Kalyan"),
(104, "Rohan", 21, 60, "rohan123@gmail.com", "Kalyan"),
(105, "Tanmay", 21, 85, "rohan123@gmail.com", "Kalyan");

SELECT * FROM Students;

#Comparison Operator
SELECT * FROM Students WHERE Marks >80;
SELECT * FROM Students WHERE Marks <=80;
SELECT * FROM Students WHERE Marks <>80;     # not equal to - <>

#Logical Operator
SELECT * FROM Students WHERE Marks =60 OR Marks =80;      
SELECT * FROM Students WHERE Marks BETWEEN 70 AND 80;
SELECT * FROM Students WHERE NOT Marks =60; 

 
#Filtering
SELECT * FROM Students WHERE Name LIKE 'A%';      #Starting With 'A'
SELECT * FROM Students WHERE Name LIKE '%sh';     #Ending with 'sh'
SELECT * FROM Students WHERE Name LIKE '%a%';     #name containing 'a'