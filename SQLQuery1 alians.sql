create database alias
use alias
create table customers(
customer_id int,
first_name varchar(100),
last_name varchar(100),
age int,
country varchar(100))
select*from customers
insert into customers(customer_id,first_name,last_name,age,country)




Create Table Orders(
OrderID Int,
Item Varchar(100),
Amount Int,
CustomerID Int)

Insert into Orders(OrderID,Item,Amount,CustomerID)
Values
(1,'Keyboard',400,1),
(2,'Mouse',300,2)
Select * from Orders

select
    c.first_name as CustomerName,
	o.Item as OrderItems,
	o.Amount
from
   customers c

join
   Order O
on Joins.employee_id=  Join_1.department_id 


--self join
select
A.employee_name as employee,
B.employee_name as manager

from join_2 A
left join joins_2 B
on B.employee_Id= A.manager_Id


