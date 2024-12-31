Create Database SQL_Union_1
Use SQL_Union_1

Create Table Teachers(
ID int,
Student_Name Varchar(100),
Age int)

Insert into dbo.Teachers(ID,Student_Name,Age)
Values
(1,'Peter',32),
(2,'Megan',43),
(3,'Rose',29),
(4,'Linda',30),
(5,'Mary',41)
Select * from dbo.Teachers

Create Table Students(
ID int,
Student_Name Varchar(100),
Age int)

Insert into dbo.Students(ID,Student_Name,Age)
Values
(1,'Harry',23),
(2,'Jack',45),
(3,'Joe',32),
(4,'Dent',23),
(5,'Bruce',40)
Select * from dbo.Students
select age, student_name from Teachers
where age>=20
union
select age, student_name from students
where age>=20

select Age
from Teachers
union All
select age
from students

select age, student_name from Teachers
where age>=20
union
select age, student_name from students
where age>=20




