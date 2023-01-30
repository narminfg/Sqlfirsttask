Create database Market
Use Market
--task1
Create Table Employees(Name nvarchar(10),SurName nvarchar(10),Position nvarchar(10),Salary int)
Insert Into Employees
Values
('Aysel','Babazade','junior',1500),
('leyla','Agazade','middle',3500),
('Nermin','Qapciyeva','senior',5000)

Select * From Employees
--1
Select AVG(Salary) From Employees
--2
Select Name,SurName,Salary From Employees where Salary>(Select AVG(Salary) From Employees)
--3
Select MIN(Salary) From Employees
Select MAX(Salary) From Employees


--task2
Create Table Products(Id int,Name nvarchar(10),Price int)
Alter Table Products add Brand nvarchar(10)
Insert Into Products
Values
(1,'notebook',3000,'macbook'),
(2,'chocolate',2,'Roshen'),
(3,'milk',2,'Milla'),
(4,'butter',15,'westgold')


Select * from Products where Price<(Select AVG(Price) from Products)

Select * from Products where Price>10

Select Name+Brand [ProductInfo] from Products where Len(Brand)>5

