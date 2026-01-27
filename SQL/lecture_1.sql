show databases;
CREATE DATABASE ayush;
use ayush;
Show tables;
CREATE TABLE Students
(
Roll_no int,
Name VARCHAR(30),
Age int,
Email VARCHAR(30),
City VARCHAR(30)
);
DESC Students;        #to show info for that table

INSERT INTO Students
(Roll_no, Name, Age, Email, City) VALUES
(101, "Yash", 21, "yash123@gmail.com", "Kalyan"),
(102, "Ashesh", 21, "ashesh123@gmail.com", "Kalyan"),
(103, "Ritesh", 21, "ritesh123@gmail.com", "Kalyan");

SELECT * FROM Students
  