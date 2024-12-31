CREATE DATABASE  Sql_Function
USE Sql_Function

Create Table Functions(
Supplier_ID int,
Customer_Name varchar(100),
Gender varchar(100),
City varchar(100),
Country varchar(100),
Cost int,
Price int,
Quantity int,
Total int)

Insert into dbo.Functions(Supplier_ID,Customer_Name,Gender,City,Country,Cost,Price,Quantity,Total)
Values
(1,'Charlotte Cooper','Male','London','UK',449,898,1,898),
(2,'Shelley Burke','Female','New Orleans','USA',77,154,8,1232),
(3,'Regina Murphy','Male','Ann Arbor','USA',437,874,4,3496),
(4,'Yoshi Nagase','Female','Tokyo','Japan',29,58,3,174),
(5,'Antonio Saavedra','Male','Oviedo','Spain',407,814,6,4884),
(6,'Mayumi Ohno','Female','Osaka','Japan',369,738,8,5904),
(7,'Ian Devling','Male','Melbourne','Australia',229,458,3,1374),
(8,'Peter Wilson','Female','Manchester','UK',180,360,1,360),
(9,'Lars Peterson','Male','Göteborg','Sweden',148,296,7,2072),
(10,'Carlos Diaz','Female','São Paulo','Brazil',233,466,5,2330),
(11,'Petra Winkler','Male','Berlin','Germany',246,492,10,4920),
(12,'Martin Bein','Female','Frankfurt','Germany',298,596,9,5364),
(13,'Sven Petersen','Male','Cuxhaven','Germany',25,50,7,350),
(14,'ElioRossi','Female','Ravenna','Italy',358,716,5,3580),
(15,'Beate Vileid','Male','Sandvika','Norway',311,622,6,3732),
(16,'Cheryl Saylor','Female','Bend','USA',255,510,10,5100),
(17,'Michael Björn','Male','Stockholm','Sweden',304,608,9,5472),
(18,'Guylène Nodier','Female','Paris','France',378,756,4,3024),
(19,'Robb Merchant','Male','Boston','USA',278,556,10,5560),
(20,'Chandra Leka','Female','Singapore','Singapore',447,894,8,7152),
(21,'Niels Petersen','Male','Lyngby','Denmark',321,642,9,5778),
(22,'Dirk Luchte','Female','Zaandam','Netherlands',178,356,8,2848),
(23,'Anne Heikkonen','Male','Lappeenranta','Finland',51,102,4,408),
(24,'Wendy Mackenzie','Female','Sydney','Australia',465,930,4,3720),
(25,'Jean Lauzon','Male','Montréal','Canada',482,964,9,8676),
(26,'Giovanni Giudici','Female','Salerno','Italy',400,800,2,1600),
(27,'Marie Delamare','Male','Montceau','France',138,276,6,1656),
(28,'Eliane Noz','Female','Annecy','France',485,970,6,5820),
(29,'Chantal Goulet','Male','Ste-Hyacinthe','Canada',113,226,6,1356)
Select * from dbo.Functions
---****--------------------------
SELECT FLOOR(10.75)
SELECT CEILING(10.25)
SELECT ROUND(10.25,1)
SELECT ROUND(10.25,3)

SELECT ROUND(10.5,0,0) AS roundvalue1 --round up
SELECT ROUND(10.5,0,1) AS roundvalue2 --round down
SELECT ROUND(10.5,0,3) AS roundvalue3 --round 
SELECT ROUND(10.5,0,4) AS roundvalue1 --round 

-------------********************Create a new table*************************------------------------------------------

CREATE TABLE Functions_1 (
EmployeeID int,
FirstName varchar(50),
Total int)

Insert into dbo.Functions_1 (EmployeeID,FirstName,Total)
Values
(1,'John', 100),
(2,'Jane', NULL),
(3,'Jim', NULL),
(4,'Jack',200),
(5,'Harish',100),
(6,'Sathya',10),
(7,'Kumar',8),
(8,'Malli',Null)
---is null--
Select * From dbo.Functions_1
WHERE total IS NULL
---is not null: filter the result 
Select * From dbo.Functions_1
WHERE total IS NOT NULL
SELECT EmployeeID, FirstName

