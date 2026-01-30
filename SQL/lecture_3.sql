## for creating databse ##

show databases;

## for editing we have t use database first ## 
use ayush;

## for creating table ##
create table students (R_No int , Name varchar(30), Age int, Division char(1), Email varchar(30));
select * from students;

##for showing student table with datatype##
describe students;

## for inserting data into table ##
insert into students
(R_no,Name,Age,Division,Email) values
(1,"Pratik",22,"A","Pratik12@gmail.com"),
(2,"Om",23,"B","Om33@gmail.com"),
(3,"Yash",20,"C","Yash24@gmail.com");

## for showing whole database table ##
select* from students;

## only for columns selection ##
select Name , Age from students;

## for altering or adding colunms in table ##
alter table students 
add column City varchar(25);
select* from students;

## for alter or rename column ##
alter table students
rename column City to Location ;

## Drop in Alter for deleting only column ##
alter table students
Drop Column Age ;
select * from students;

## for modifying table column data type 
alter table students
modify column Division varchar(30);
select * from students;
insert into students
(Location) value
("Domivli");

##for deleting only data from column
delete from students
where Location = "Domivli";
select * from students;

## for updating values in column 
update students
set Location = "Dombivali"
where R_No =1;
update students
set Location = "Bhandup"
where R_No =2;
update students
set Location = "KAlava"
where R_No =3;
select * from Students;

###FOR Adding Column Name#
alter table students 
add column Course varchar(25);
alter table students  
add column Fees int;

### Adding Data into Column#
update students set Course = "DA"
where R_No = 1 ;
update students set Course = "DSci"
where R_No = 2 ;
update students set Course = "WD"
where R_No = 3 ;
select * from Students;
update students set Fees = "41000"
where R_No = 1 ;
update students set Fees = "60000"
where R_No = 2 ;
update students set Fees = "55000"
where R_No = 3 ;
select * from Students 
where fees between 40000 and 59000;

## End from a ##
select * from Students where Name like '%k';

## middle is t ##
select * from students where Name like '%t%';

## start with O ##
select * from students where Name like 'O%';

select * from students where Fees >40000;
select * from students where not Fees =41000;
select * from students where Fees <57000;
select * from students where Fees <=57000;
select * from students where Fees >=55000;
select * from students where Fees <>55000;
select * from students where Division="B";
alter table students 
add column City char(1);
select * from students where Division="A" or Division="B";
select * from students where not Division="A";
select * from students where Course in ("DSci","WD");
select * from students where Course not in ("DSci","WD");
select * from students where Course="DA" or course="WD";
select * from students where Location="KAlava";
select * from students;
alter table students
Drop Column City ;
select * from students where Location="Dombivali";














