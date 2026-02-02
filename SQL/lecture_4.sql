CREATE TABLE Students
(
Roll_no int,
Name VARCHAR(30),
Age int,
Marks int,
Courses VARCHAR(30),
Email VARCHAR(30),
City VARCHAR(30),
Fees int
);
DESC Students;        #to show info for that table

INSERT INTO Students
(Roll_no, Name, Age, Marks, Courses, Email, City, Fees) VALUES
(101, "Yash", 21, 90, "DS", "yash123@gmail.com", "Kalyan", 45000),
(102, "Ashesh", 21, 75, "DA", "ashesh123@gmail.com", "Dombivli", 60000),
(103, "Ritesh", 21, 80, "FullStack", "ritesh123@gmail.com", "Thane", 55000),
(104, "Rohan", 21, 60, "DA", "rohan123@gmail.com", "Mumbai", 50000),
(105, "Tanmay", 21, 85, "DA", "rohan123@gmail.com", "Kalyan", 40000),
(106, "Geetesh", 21, 90, "DS", "geeteshh123@gmail.com", "Dombivli", 45000);

SELECT * FROM Students;


#Aggregate Functions#

SELECT SUM(Fees) AS total_fees FROM Students;                #Sum Function#
SELECT MIN(Fees) AS min_fees FROM Students;                  #Min Function#
SELECT MAX(Fees) AS max_fees FROM Students;                  #Max Function#
SELECT COUNT(Roll_no) AS total_count FROM Students;          #Count Function#
#or#
SELECT COUNT(*) AS total_count FROM Students;
SELECT AVG(Fees) AS avg_fees FROM Students;                  #Avg Function#

#To Find Unique Keywords From coloumn#
SELECT DISTINCT Courses AS total_courses FROM Students;     #Distinct Keyword#

#To find total count of couses?#
SELECT COUNT(DISTINCT Courses) AS total_count_courses FROM Students;

#To find total of Cities?#
SELECT DISTINCT City AS total_cities FROM Students;

#To find total count of Cities?#
SELECT COUNT(DISTINCT City) AS total_count_cities FROM Students;

#GROUPBY Function#

#total fees in every course
SELECT Courses, SUM(Fees) AS total_fees FROM Students 
GROUP BY Courses;

#minimum fees in every couse
SELECT Courses, MIN(Fees) AS min_fees FROM Students 
GROUP BY Courses;

#max fees in every course
SELECT Courses, MAX(Fees) AS max_fees FROM Students 
GROUP BY Courses;

#total students in every course
SELECT Courses, COUNT(Roll_no) AS total_students FROM Students 
GROUP BY Courses;

#total students in certain course
SELECT Courses, COUNT(Roll_no) AS total_students FROM Students WHERE Courses="DS" 
GROUP BY Courses;


