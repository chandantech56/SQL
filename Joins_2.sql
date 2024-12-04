Use Joins

Create Table Table_Company_Mast(
Company_ID INT,
Company_Name VARCHAR(250))

Insert Into dbo.Table_Company_Mast(Company_ID,Company_Name)
Values
(11,'Samsung'),
(12,'iBall'),
(13,'Epsion'),
(14,'Zebronics'),
(15,'Asus'),
(16,'Frontech')

Create Table Table_Item_Mast(
Product_ID INT,
Product_Name VARCHAR(250),
Product_Price DECIMAL(10,2),
Product_Commission INT)

Insert Into dbo.Table_Item_Mast(Product_ID,Product_Name,Product_Price,Product_Commission)
Values
(101,'Mother Board',3200.00,15),
(102,'Key Board',450.00,16),
(103,'ZIP drive',250.00,14),
(104,'Speaker',550.00,16),
(105,'Monitor',5000.00,11),
(106,'DVD drive',900.00,12),
(107,'CD drive',800.00,12),
(108,'Printer',2600.00,13),
(109,'Refill cartridge',350.00,13),
(110,'Mouse',250.00,12)

--Question 21.
--From the following tables write a  SQL query to select all rows from both participating tables as long 
--as there is a match between Product_Commission and Company_ID.
--(Table_Company_Mast and Table_Item_Mast)

Select * From Table_Item_Mast
Inner Join Table_Company_Mast
On Table_Item_Mast.Product_Commission = Table_Company_Mast.Company_ID

--Question 22.
--Write a SQL query to display the item name, price, and company name of all the products.
--(Table_Company_Mast and Table_Item_Mast)

Select Table_Item_Mast.Product_Name AS Item_Name,Table_Item_Mast.Product_Price AS Price,Table_Company_Mast.Company_Name
From Table_Item_Mast
Inner Join Table_Company_Mast
On Table_Item_Mast.Product_Commission = Table_Company_Mast.Company_ID

--Question 23.
--From the following tables write a SQL query to calculate the average price of items of each company. 
--Return average value and company name.
--(Table_Company_Mast and Table_Item_Mast)

Select Table_Company_Mast.Company_Name,AVG(Product_Price) AS Average_Price
From Table_Item_Mast
Inner Join Table_Company_Mast
On Table_Item_Mast.Product_Commission = Table_Company_Mast.Company_ID
Group By Table_Company_Mast.Company_Name

--Question 24.
--From the following tables write a SQL query to calculate and find the average price of items of each 
--company higher than or equal to Rs. 350. Return average value and company name.
--(Table_Company_Mast and Table_Item_Mast)

Select Table_Company_Mast.Company_Name,AVG(Product_Price) AS Average_Price
From Table_Item_Mast
Inner Join Table_Company_Mast
On Table_Item_Mast.Product_Commission = Table_Company_Mast.Company_ID
Group By Table_Company_Mast.Company_Name
Having AVG(Product_Price) >=350.00

--Question 25.
--From the following tables write a SQL query to find the most expensive product of each company. 
--Return pro_name, pro_price and com_name.

Select Table_Item_Mast.Product_Name,Table_Item_Mast.Product_Price AS Price,Table_Company_Mast.Company_Name
From Table_Item_Mast
Inner Join Table_Company_Mast
On Table_Item_Mast.Product_Commission = Table_Company_Mast.Company_ID
And Table_Item_Mast.Product_Price = (
Select MAX(Product_Price)
From Table_Item_Mast
Where Table_Item_Mast.Product_Commission = Table_Company_Mast.Company_ID)

--Question 26.
--From the following tables write a SQL query to display all the data of employees including their 
--department.
--Table_Employee_Department and Table_Employee_Details)

Create Table Table_Employee_Details(
Empoloyee_ID INT,
Empoloyee_First_Name VARCHAR(250),
Empoloyee_Last_Name VARCHAR(250),
Empoloyee_Department VARCHAR(250))

Insert Into dbo.Table_Employee_Details(Empoloyee_ID,Empoloyee_First_Name,Empoloyee_Last_Name,Empoloyee_Department)
Values(127323,'Michale','Robbin',57),
(526689,'Carlos','Snares',63),
(843795,'Enric','Dosio',57),
(328717,'Jhon','Snares',63),
(444527,'Joseph','Dosni',47),
(659831,'Zanifer','Emily',47),
(847674,'Kuleswar','Sitaraman',57),
(748681,'Henrey','Gabriel',47),
(555935,'Alex','Manuel',57),
(539569,'George','Mardy',27),
(733843,'Mario','Saule',63),
(631548,'Alan','Snappy',27),
(839139,'Maria ','Foster',57)

Create Table Table_Employee_Department(
Department_Code INT,
Department_Name VARCHAR(250),
Department_Allotment VARCHAR(250))

Insert Into dbo.Table_Employee_Department(Department_Code,Department_Name,Department_Allotment)
Values
(57,'IT',65000),
(63,'Finance',15000),
(47,'HR',240000),
(27,'RD',55000),
(89,'QC',75000)

Select * From Table_Employee_Details
Inner Join Table_Employee_Department
On Table_Employee_Details.Empoloyee_Department = Table_Employee_Department.Department_Code

--Question 27.
--From the following tables write a SQL query to display the first and last names of each employee,
--well as the department name and sanction amount.
--(Table_Employee_Department and Table_Employee_Details)

Select Table_Employee_Details.Empoloyee_First_Name,Table_Employee_Details.Empoloyee_Last_Name,
Table_Employee_Department.Department_Name,Table_Employee_Department.Department_Allotment AS Sanction_Amount
From Table_Employee_Details
Inner Join Table_Employee_Department
On Table_Employee_Details.Empoloyee_Department = Table_Employee_Department.Department_Code

--Question 28.
--From the following tables write a SQL query to find the departments with budgets more than Rs. 50000 
--and display the first name and last name of employees.
--(Table_Employee_Department and Table_Employee_Details)

Select Table_Employee_Details.Empoloyee_First_Name,Table_Employee_Details.Empoloyee_Last_Name,
Table_Employee_Department.Department_Allotment AS Budget
From Table_Employee_Details
Inner Join Table_Employee_Department
On Table_Employee_Details.Empoloyee_Department = Table_Employee_Department.Department_Code
Where Table_Employee_Department.Department_Allotment >50000 

--Question 29.
--From the following tables write a SQL query to find the names of departments where more than two 
--employees are employed. Return dpt_name.
--(Table_Employee_Department and Table_Employee_Details)

Select Table_Employee_Department.Department_Name
From Table_Employee_Details
Inner Join Table_Employee_Department
On Table_Employee_Details.Empoloyee_Department = Table_Employee_Department.Department_Code
Group By Table_Employee_Department.Department_Name
Having COUNT(*) >2
 