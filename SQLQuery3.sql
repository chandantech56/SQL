create database cricket
use cricket
create table cricketMan_details(
Employee_ID int Identity (1,1) Primary Key,
Employee_Name varchar(100))
select*from cricketMan_details
insert into cricketMan_details
(Employee_Name)
values
('Harish'),
('Kumar'),
('Malli'),
('Sathya'),
('Virat'),
('Kohli')

