CREATE TABLE Employee
(
emp_id INT PRIMARY KEY,
name VARCHAR(30),
dept VARCHAR(30),
city VARCHAR(30) DEFAULT("Kalyan"),
email VARCHAR(30) UNIQUE,
salary INT,
man_id INT
);

INSERT INTO Employee 
(emp_id, name, dept, city, email, salary, man_id) VALUES
(1, "Yash", "HR", DEFAULT, "yash123@gmail.com", 80000, NULL),
(2, "Rishi", "IT", "Dombivli", "rishi123@gmail.com", 60000, 1),
(3, "Sam", "Finance", "Thane", "sam123@gmail.com", 75000, 1),
(4, "Sai", "Marketing", DEFAULT, "sai123@gmail.com", 90000, 2),
(5, "Rohit", "Finance", "Mumbai", "rohit123@gmail.com",65000, 2),
(6, "Bhupesh", "HR", "Dombivli", "bhupesh123@gmail.com",55000, 3);

SELECT * FROM Employee;

-- SUB-QUERIES
-- The inner query gets excuted first same as nested loop in python


-- Show the name of the employee who has second highest salary 
SELECT name, salary FROM Employee
WHERE salary = (SELECT MAX(salary) FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee));


-- Show the name of the employee whose salary is greater than avg salary of all employee
SELECT name, salary FROM Employee
WHERE salary > (SELECT AVG(salary) FROM Employee);

-- Find the employee who works in same department as yash
SELECT * FROM Employee
WHERE dept = (SELECT dept FROM Employee
WHERE name = "yash") AND name <> "yash";

-- Show the salaries less than salary in Finance dept
SELECT name, salary FROM Employee
WHERE salary < ANY (SELECT MIN(salary) FROM Employee
WHERE dept = "Finance");

-- Find out emplyee where salary is greater than the max salary from HR
-- query1
SELECT name, salary FROM Employee
WHERE salary > ANY (SELECT MAX(salary) FROM Employee
WHERE dept = "HR");

-- query2
SELECT name, salary FROM Employee
WHERE salary > ALL (SELECT salary FROM Employee
WHERE dept = "HR");

-- Update dept and salary of rohit to rishi's dept and salary
UPDATE Employee
SET dept = (SELECT dept FROM(SELECT dept FROM Employee WHERE name = "Rohit") AS X),
salary = (SELECT salary FROM(SELECT salary FROM Employee WHERE name = "Rohit") AS Y)
WHERE name = "Rishi";
SELECT * FROM Employee;

-- Update City to multiple employee at a time
UPDATE employee
SET City = "Thane"
WHERE emp_id IN (3,5);
SELECT * FROM Employee;