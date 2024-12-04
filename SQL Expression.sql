Create database SQL_Expression
use SQL_Expression

--equality
Select case when 1<> 1 then 'true' else 'false' end as result
--inequality
Select case when 1<> 2 then 'true' else 'false' end as result

--and
Select case when 1=1 and 2= 2 then 'true' else 'false' end as result
Select case when 1<>1 and 2<> 2 then 'true' else 'false' end as result

--or
Select case when 1=1 and 2= 3 then 'true' else 'false' end as result
Select case when 1<>1 and 2<> 3 then 'true' else 'false' end as result

 --not
Select case when not (1=2) then 'true' else 'false' end as result
Select case when not (1=1) then 'true' else 'false' end as result

Create Table Expressions(
Employee_ID int,
Emplolyee_Name varchar(100),
Age int,
Emplolyee_Address varchar(100),
Salary int)
Select * From dbo.Expressions

Insert into dbo.Expressions (Employee_ID, Emplolyee_Name, Age, Emplolyee_Address, Salary)
Values
(1,'Ramesh',32,'Ahmedabad',2000.00),
(2,'Khilan',25,'Delhi',1500.00),
(3,'kaushik',23,'Kota',2000.00),
(4,'Chaitali',25,'Mumbai',6500.00),
(5,'Hardik',27,'Bhopal',8500.00),
(6,'Komal',22,'Hyderabad',4500.00),
(7,'Muffy',24,'Indore',10000.00)
Select * From dbo.Expressions

--case with else
select Employee_ID, Salary,
case
when salary <3000 then 'low'
when salary between 3000 and 5000 then 'medium'
else 'High'
end as SalaryCategory
from Expressions


