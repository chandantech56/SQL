Create Database Operator
Use Operator

Create Table Operators(
Supplier_ID int,
Country varchar(100),
Cost int,
Price int,
Quantity int,
Total int)
Select * From dbo.Operators

Insert into dbo.Operators(Supplier_ID,Country,Cost,Price,Quantity,Total)
Values
(1,'UK',449,898,1,898),
(2,'USA',77,154,8,1232),
(3,'USA',437,874,4,3496),
(4,'Japan',29,58,3,174),
(5,'Spain',407,814,6,4884),
(6,'Japan',369,738,8,5904),
(7,'Australia',229,458,3,1374),
(8,'UK',180,360,1,360),
(9,'Sweden',148,296,7,2072),
(10,'Brazil',233,466,5,2330),
(11,'Germany',246,492,10,4920),
(12,'Germany',298,596,9,5364),
(13,'Germany',25,50,7,350),
(14,'Italy',358,716,5,3580),
(15,'Norway',311,622,6,3732),
(16,'USA',255,510,10,5100),
(17,'Sweden',304,608,9,5472),
(18,'France',378,756,4,3024),
(19,'USA',278,556,10,5560),
(20,'Singapore',447,894,8,7152),
(21,'Denmark',321,642,9,5778),
(22,'Netherlands',178,356,8,2848),
(23,'Finland',51,102,4,408),
(24,'Australia',465,930,4,3720),
(25,'Canada',482,964,9,8676),
(26,'Italy',400,800,2,1600),
(27,'France',138,276,6,1656),
(28,'France',485,970,6,5820),
(29,'Canada',113,226,6,1356)
--addition
select 10+10 as Addition_result
select 10-5 as substraction_result
select 10*5 as multiplication_result
select 10/5 as divided_result
select 10%3 as modulo_result --reminder
--comparison operator
select*from operators
where quantity = 4 -- equal to
select*from operators
where quantity <> 4 --not equal <>
select*from operators
where quantity >5000 --greater than

select*from operators
where quantity <5000 --less than

--less than and equal to
select*from operators
where quantity <=500 
--greater tahan and equal to
select*from operators
where quantity >=500
--logical operator
select*from operators
where price>600 and quantity <5

select*from operators
where price>600 or quantity <5

select*from operators
where not quantity <=3

select*from operators
where not quantity <=3

select*from operators
where total !>4000

--likes operator
select*from operators
where quantity like '5%' --print after 5

select*from operators
where quantity like '%5' --print before 5
select*from operators
where cost like 233

--concatination operator
declare @first_name varchar(50)= 'chandan'
declare @last_name varchar(50)= 'kumar'
select concat(@first_name, ' ',@last_name) as fullname

declare @first_name varchar(50)= 'david'
declare @last_name varchar(50)= 'varner'
select @first_name+ ' ' + @last_name as fullname







