Create Database Joins
Use Joins

--Question 1. 
--From the following tables write a SQL query to find the salesperson and customer who reside in the 
--same city. Return Salesman, cust_name and city. (Table_Salesman and Table_Customer)

Create Table Table_Salesman(
Salesman_ID INT,
Salesman_Name VARCHAR(250),
City VARCHAR(250),
Commission Decimal(5,2))

Insert Into dbo.Table_Salesman (Salesman_ID,Salesman_Name,City,Commission)
Values
(5001,'James Hoog','New York',0.15),
(5002,'Nail Knite','Paris',0.13),
(5005,'Pit Alex','London',0.11),
(5006,'Mc Lyon','Paris',0.14),
(5007,'Paul Adam','Rome',0.13),
(5003,'Lauson Hen','San Jose',0.13)
Select * From Table_Salesman

Create Table Table_Customer(
Customer_ID INT,
Customer_Name VARCHAR(250),
City VARCHAR(250),
Grade INT,
Salesman_ID INT)

Insert Into dbo.Table_Customer(Customer_ID,Customer_Name,City,Grade,Salesman_ID)
Values
(3002,'Nick Rimando','New York',100,5001),
(3007,'Brad Davis','New York',200,5001),
(3005,'Graham Zusi','California',200,5002),
(3008,'Julian Green','London',300,5002),
(3004,'Fabian Johnson','Paris',300,5006),
(3009,'Geoff Cameron','Berlin',100,5003),
(3003,'Jozy Altidor','Moscow',200,5007),
(3001,'Brad Guzan','London',NULL,5005)

Select Table_Salesman.Salesman_Name AS Salesman,Table_Customer.Customer_Name,Table_Customer.City
From Table_Salesman,Table_Customer
Where Table_Salesman.City = Table_Customer.City

Create Table Table_Orders(
Order_No INT,
Purchase_Amount INT,
Order_Date DATE,
Customer_ID INT,
Salesman_ID INT)
Select * From dbo.Table_Orders

Insert Into dbo.Table_Orders(Order_No,Purchase_Amount,Order_Date,Customer_ID,Salesman_ID)
Values
(70001,150.5,'2012-10-05',3005,5002),
(70009,270.65,'2012-09-10',3001,5005),
(70002,65.26,'2012-10-05',3002,5001),
(70004,110.5,'2012-08-17',3009,5003),
(70007,948.5,'2012-09-10',3005,5002),
(70005,2400.6,'2012-07-27',3007,5001),
(70008,5760,'2012-09-10',3002,5001),
(70010,1983.43,'2012-10-10',3004,5006),
(70003,2480.4,'2012-10-10',3009,5003),
(70012,250.45,'2012-06-27',3008,5002),
(70011,75.29,'2012-08-17',3003,5007),
(70013,3045.6,'2012-04-25',3002,5001)
Select * From dbo.Table_Orders

--Question 2. 
--From the following tables(Table_Orders and Table_Customer) write a  SQL query to find those orders
--where the order amount exists between 500 and 2000. Return ord_no, purch_amt, cust_name, city.

Select Table_Orders.Order_No,Table_Orders.Purchase_Amount AS Order_Amount,Table_Customer.Customer_Name,Table_Customer.City
From Table_Customer,Table_Orders
Where Table_Customer.Customer_ID = Table_Orders.Customer_ID
And Purchase_Amount between 500 and 2000

--Question 3.
--From the following tables(Table_Salesman and Table_Customer) write a SQL query to find the salesperson(s)
--and the customer(s) he represents. Return Customer Name, city, Salesman, commission.

Select Table_Customer.Customer_Name,Table_Salesman.Salesman_Name,Table_Salesman.Commission
From Table_Customer
Inner Join Table_Salesman
On Table_Salesman.Salesman_ID = Table_Customer.Salesman_ID

--Question 4.
--From the following tables(Table_Salesman and Table_Customer) write a SQL query to find salespeople who 
--received commissions of more than 12 percent from the company. Return Customer Name, customer city, 
--Salesman, commission.

Select Table_Customer.Customer_Name,Table_Customer.City,Table_Salesman.Salesman_Name AS Salesman,Table_Salesman.Commission
From Table_Customer
Inner Join Table_Salesman
On Table_Customer.Salesman_ID = Table_Salesman.Salesman_ID
Where Table_Salesman.Commission >0.12

--Question 5.
--From the following tables(Table_Salesman and Table_Customer) write a  SQL query to locate those 
--salespeople who do not live in the same city where their customers live and have received a commission 
--of more than 12% from the company. Return Customer Name, customer city, Salesman, salesman city, 
--commission.

Select Table_Customer.Customer_Name,Table_Customer.City,Table_Salesman.Salesman_Name AS Salesman,Table_Salesman.City,Table_Salesman.Commission
From Table_Customer
Inner Join Table_Salesman
On Table_Customer.Salesman_ID = Table_Salesman.Salesman_ID
And Table_Customer.City <> Table_Salesman.City
Where Table_Salesman.Commission >0.12

--Question 6.
--From the following tables(Table_Orders, Table_Salesman and Table_Customer) write a SQL query to find the 
--details of an order. Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission.

Select Table_Orders.Order_No,Table_Orders.Order_Date,Table_Orders.Purchase_Amount,Table_Customer.Customer_Name,Table_Customer.Grade,Table_Salesman.Salesman_Name,Table_Salesman.Commission
From Table_Orders
Inner Join Table_Customer
On Table_Orders.Customer_ID= Table_Customer.Customer_ID

Inner Join Table_Salesman
On Table_Orders.Salesman_ID = Table_Salesman.Salesman_ID

--Question 7. Not Required

--Question 8.
--From the following tables(Table_Salesman and Table_Customer) write a SQL query to display the customer name, customer city, grade, salesman, 
--salesman city. The results should be sorted by ascending customer_id. 

Select Table_Customer.Customer_ID,Table_Customer.Customer_Name,Table_Customer.City,Table_Customer.City,Table_Salesman.Salesman_Name,Table_Salesman.City
From Table_Customer
Left Join Table_Salesman
On Table_Customer.Salesman_ID = Table_Salesman.Salesman_ID
Order By Table_Customer.Customer_ID ASC

--Question 9.
--From the following tables(Table_Salesman and Table_Customer) write a SQL query to find those customers 
--with a grade less than 300. Return cust_name, customer city, grade, Salesman, salesmancity. The result 
--should be ordered by ascending customer_id. 

Select Table_Customer.Customer_Name,Table_Customer.City,Table_Customer.Grade,Table_Salesman.Salesman_Name,Table_Salesman.City AS Salesman_City
From Table_Customer
Inner Join Table_Salesman
On Table_Customer.Salesman_ID = Table_Salesman.Salesman_ID
Where Table_Customer.Grade <300
Order By Table_Customer.Customer_ID ASC

--Question 10.
--Write a SQL statement to make a report with customer name, city, order number, order date, and 
--order amount in ascending order according to the order date to determine whether any of the existing 
--customers have placed an order or not. (Table_Orders and Table_Customer)

Select Table_Customer.Customer_Name,Table_Customer.City,Table_Orders.Order_No,Table_Orders.Order_Date,Table_Orders.Purchase_Amount AS Order_Amount
From Table_Customer
Left Join Table_Orders
On Table_Customer.Customer_ID = Table_Orders.Customer_ID
Order By Table_Orders.Order_Date

--Question 11.
--SQL statement to generate a report with customer name, city, order number, order date, order amount, 
--salesperson name, and commission to determine if any of the existing customers have not placed orders or 
--if they have placed orders through their salesman or by themselves.
--(Table_Orders, Table_Salesman and Table_Customer)

Select Table_Customer.Customer_Name,Table_Customer.City,Table_Orders.Order_No,Table_Orders.Order_Date,Table_Orders.Purchase_Amount As Order_Amount,
Table_Salesman.Salesman_Name,Table_Salesman.Commission
From Table_Customer
Left Join Table_Orders
On Table_Customer.Customer_ID = Table_Orders.Customer_ID

Left Join Table_Salesman
On Table_Customer.Salesman_ID = Table_Salesman.Salesman_ID

--Question 12.
--Write a  SQL statement to generate a list in ascending order of salespersons who work either for
--one or more customers or have not yet joined any of the customers. 
--(Table_Orders and Table_Customer)

Select Table_Salesman.Salesman_Name,Table_Customer.Customer_Name
From Table_Salesman
Inner Join Table_Customer
On Table_Salesman.Salesman_ID = Table_Customer.Salesman_ID
Order By Table_Salesman.Salesman_Name ASC

--Question 13.
--From the following tables write a  SQL query to list all salespersons along with customer name, 
--city, grade, order number, date, and amount. 
--Condition for selecting list of salesmen : 1. Salesmen who works for one or more customer or, 
--2. Salesmen who not yet join under any customer, 
--Condition for selecting list of customer : 3. placed one or more orders, or 
--4. no order placed to their salesman.
--(Table_Orders, Table_Salesman and Table_Customer)

Select Table_Customer.Customer_Name,Table_Customer.City,Table_Customer.Grade,Table_Salesman.Salesman_Name AS Salesman,
Table_Orders.Order_No,Table_Orders.Order_Date,Table_Orders.Purchase_Amount AS Order_Amount
From Table_Orders
Left Join Table_Customer
On Table_Orders.Customer_ID = Table_Customer.Customer_ID
Left Join Table_Salesman
On Table_Orders.Salesman_ID = Table_Salesman.Salesman_ID

Select Table_Customer.Customer_Name,Table_Customer.City,Table_Customer.Grade,Table_Salesman.Salesman_Name AS Salesman,
Table_Orders.Order_No,Table_Orders.Order_Date,Table_Orders.Purchase_Amount AS Order_Amount
From Table_Customer
Right Join Table_Salesman
On Table_Customer.Salesman_ID = Table_Salesman.Salesman_ID
Right Join Table_Orders
On Table_Customer.Customer_ID = Table_Orders.Customer_ID

--Question 14.
--Write a  SQL statement to make a list for the salesmen who either work for one or more customers 
--or yet to join any of the customer. The customer may have placed, either one or more orders on 
--or above order amount 2000 and must have a grade, or he may not have placed any order to the 
--associated supplier. 
--(Table_Orders, Table_Salesman and Table_Customer)

Select Table_Customer.Customer_Name,Table_Customer.City,Table_Customer.Grade,Table_Salesman.Salesman_Name AS Salesman,
Table_Orders.Order_No,Table_Orders.Order_Date,Table_Orders.Purchase_Amount AS Order_Amount
From Table_Customer
Right Join Table_Salesman
On Table_Salesman.Salesman_ID = Table_Customer.Salesman_ID
Left Join Table_Orders
On Table_Orders.Customer_ID = Table_Customer.Customer_ID
Where Table_Orders.Purchase_Amount >=2000
And Table_Customer.Grade IS NOT NULL

Select Table_Customer.Customer_Name,Table_Customer.City,Table_Customer.Grade,Table_Salesman.Salesman_Name AS Salesman,
Table_Orders.Order_No,Table_Orders.Order_Date,Table_Orders.Purchase_Amount AS Order_Amount
From Table_Orders
Left Join Table_Customer
On Table_Orders.Customer_ID = Table_Customer.Customer_ID
Left Join Table_Salesman
On Table_Customer.Salesman_ID = Table_Salesman.Salesman_ID
Where Table_Orders.Purchase_Amount >=2000
And Table_Customer.Grade IS NOT NULL

--Question 15.
--For those customers from the existing list who put one or more orders, or which orders have been placed 
--by the customer who is not on the list, create a report containing the customer name, city, order number,
--order date, and purchase amount
--(Table_Orders and Table_Customer)

Select Table_Customer.Customer_Name,Table_Customer.City,Table_Orders.Order_No,Table_Orders.Order_Date,Table_Orders.Purchase_Amount AS Order_Amount
From Table_Orders
Left Join Table_Customer
On Table_Orders.Customer_ID = Table_Customer.Customer_ID

--Question 16.
--Write a SQL statement to generate a report with the customer name, city, order no. order date, purchase 
--amount for only those customers on the list who must have a grade and placed one or more orders or which 
--order(s) have been placed by the customer who neither is on the list nor has a grade.
--(Table_Orders and Table_Customer)

Select Table_Customer.Customer_Name,Table_Customer.City,Table_Orders.Order_No,Table_Orders.Order_Date,
Table_Orders.Purchase_Amount AS Order_Amount
From Table_Customer
Left Join Table_Orders
On Table_Customer.Customer_ID = Table_Orders.Customer_ID
Where Table_Customer.Grade IS NOT NULL

Select Table_Customer.Customer_Name,Table_Customer.City,Table_Orders.Order_No,Table_Orders.Order_Date,
Table_Orders.Purchase_Amount AS Order_Amount
From Table_Customer
Full Outer Join Table_Orders
On Table_Customer.Customer_ID = Table_Orders.Customer_ID
Where Table_Customer.Grade IS NOT NULL

--Question 17.
--Write a SQL query to combine each row of the salesman table with each row of the customer table.
--(Table_Salesman and Table_Customer)

Select * From Table_Salesman
Cross Join Table_Customer

--Question 18.
--Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. each 
--salesperson will appear for all customers and vice versa for that salesperson who belongs to that city.
--(Table_Salesman and Table_Customer)

Select * From Table_Salesman
Cross Join Table_Customer
Where Table_Customer.City IS NOT NULL

--Question 19.
-- Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. each 
--salesperson will appear for every customer and vice versa for those salesmen who belong to a city and 
--customers who require a grade.
--(Table_Salesman and Table_Customer)

Select * From Table_Salesman
Cross Join Table_Customer
Where Table_Salesman.City IS NOT NULL
And Table_Customer.Grade IS NOT NULL

--Question 20.
--Write a SQL statement to make a Cartesian product between salesman and customer i.e. each salesman will 
--appear for all customers and vice versa for those salesmen who must belong to a city which is not the 
--same as his customer and the customers should have their own grade.
--(Table_Salesman and Table_Customer)

Select * From Table_Salesman
Cross Join Table_Customer
Where Table_Salesman.City IS NOT NULL
And Table_Customer.Grade IS NOT NULL
AND Table_Salesman.City <> Table_Customer.City