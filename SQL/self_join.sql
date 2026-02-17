CREATE TABLE Employee
(
emp_id INT PRIMARY KEY,
name VARCHAR(30),
dept VARCHAR(30),
city VARCHAR(30) DEFAULT("Kalyan"),
email VARCHAR(30) UNIQUE,
man_id INT
);

INSERT INTO Employee 
(emp_id, name, dept, city, email, man_id) VALUES
(1, "Yash", "HR", DEFAULT, "yash123@gmail.com", NULL),
(2, "Rishi", "IT", "Dombivli", "rishi123@gmail.com", 1),
(3, "Sam", "Finance", "Thane", "sam123@gmail.com", 1),
(4, "Sai", "Marketing", DEFAULT, "sai123@gmail.com", 2),
(5, "Rohit", "Finance", "Mumbai", "rohit123@gmail.com", 2),
(6, "Bhupesh", "HR", "Dombivli", "bhupesh123@gmail.com", 3);

SELECT * FROM Employee;

-- SELF JOIN

-- Display mangers for employee
SELECT E.name AS Employee_Name, M.name AS Manager_Name
FROM Employee E
JOIN Employee M
ON M.emp_id = E.man_id;

-- Display whose managers are same
SELECT E1.name AS Employee_Name_1, E2.name AS Employee_Name_2, E1.man_id AS Manager_Id
FROM EMPLOYEE E1
JOIN Employee E2
ON E1.man_id = E2.man_id AND E1.emp_id < E2.emp_id;             
-- to remove duplicates "E1.emp_id < E2.emp_id" is used

-- Display Employee whose cities are same
SELECT E1.name AS Employee_Name_1, E2.name AS Employee_Name_2, E1.city AS city
FROM Employee E1
JOIN Employee E2
ON E1.city = E2.city AND E1.emp_id < E2.emp_id;

