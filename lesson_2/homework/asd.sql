create database F33_lesson_3
--Easy-Level Tasks (10)
--1. Define and explain the purpose of BULK INSERT in SQL Server.?
--The Bulk insert command allows you to efficiently import large amounts of data from a data file directly into a database table.
--Can handle csv, txt files

--2. List four file formats that can be imported into SQL Server.?
--csv, ecxel, text, xml

--3. Create a table Products with columns: ProductID (INT, PRIMARY KEY), ProductName (VARCHAR(50)), Price (DECIMAL(10,2)).
create table Products (ProductID INT PRIMARY KEY, ProductName VARCHAR(50), Price DECIMAL(10,2))
Select* from Products

--4. Insert three records into the Products table using INSERT INTO.
Insert into Products values 
(1, 'Cola', 100),
(2, 'Fanta', 200),
(3, 'Sevenup', 200);

--5. Explain the difference between NULL and NOT NULL.
-- Null is not equal to anything, even another Null. Not Null columns coudls be compared directly.

--6. Add a UNIQUE constraint to the ProductName column in the Products table.
alter table Products
add constraint PN unique (Productname)

--7. Write a comment in a SQL query explaining its purpose.
-- this query explaines how to creat a database and table in it
create database Kamola_UChkunova
create table Kamola (ID int, age int, name varchar);

--8. Add CategoryID column to the Products table.
alter table Products add CategoryID int;


update Products set CategoryID=1 where ProductID%2=1;
update Products set CategoryID=2 where ProductID%2=0

select * from Products

--9. Create a table Categories with a CategoryID as PRIMARY KEY and a CategoryName as UNIQUE.
create table Categories (CategoryID Int PRIMARY KEY, CategoryName varchar(50)unique,price int);
drop table Categories;

insert into Categories values (1, 'Sugarfree', 100)
insert into Categories values (2, 'Sugar', 200);

select * from Categories

--10. Explain the purpose of the IDENTITY column in SQL Server.
--Assists to add value to each row after first one. For example: start 1,2,3 and so on 

--Medium-Level Tasks (10)
--11. Use BULK INSERT to import data from a text file into the Products table.

--12. Create a FOREIGN KEY in the Products table that references the Categories table.
alter table Products add constraint FK_PC foreign key (CategoryID) references Categories(CategoryID);


select * from Products;
select * from Categories;

--13. Explain the differences between PRIMARY KEY and UNIQUE KEY.
-- Unique key: combination unique, null is accepted
-- Primary key: dublication in columns is not accepted, null is not accepted 

--14. Add a CHECK constraint to the Products table ensuring Price > 0.
alter table Products add constraint PP check (Price>0);

--15. Modify the Products table to add a column Stock (INT, NOT NULL).
alter table Products add Stock int not null default 0;

--16. Use the ISNULL function to replace NULL values in Price column with a 0.
select ProductID, ProductName, CategoryID, isnull (price, 0) as price from Products;  

select * from Products;
select * from Categories;

--17. Describe the purpose and usage of FOREIGN KEY constraints in SQL Server.
--Purpose and Usage of Foreign key Constraints in SQL Server:A Foreign key constraint is used to enforce referential integrity between two tables. It ensures that the value in one table (child) matches a value in another table (parent).

--Hard-Level Tasks (10)
--18. Write a script to create a Customers table with a CHECK constraint ensuring Age >= 18.
Create table Customers (CustomerID int Primary key, Name varchar(50) not null, age int not null, check (Age>=18));

--19. Create a table with an IDENTITY column starting at 100 and incrementing by 10.
create table school (StudentID int identity(100, 10), name varchar(100));

select * from school

insert into school values ('John')
insert into school values ('Sara')
insert into school values ('Jessy');

--20. Write a query to create a composite PRIMARY KEY in a new table OrderDetails.
Create table Orderdetails 
(OrderId int, ProductId int, Productname varchar(100), Price decimal(10), primary key ( OrderId, ProductId));
select * from orderdetails

--21. Explain the use of COALESCE and ISNULL functions for handling NULL values.
--ISNULL replaces NULL with a specified replacement value.
--COALESCE returns the first non-NULL value from a list of expressions.

--22. Create a table Employees with both PRIMARY KEY on EmpID and UNIQUE KEY on Email.
create table employees 
(EmpID int primary key, Name varchar(100), Email varchar(100), salary decimal, constraint UQ_Mail unique (Email)); 

--23. Write a query to create a FOREIGN KEY with ON DELETE CASCADE and ON UPDATE CASCADE options.

create table Orders 
(OrderID int primary key, CustomerID int, Orderdate date, 
Constraint FK_Customer foreign key (CustomerID) references Customers(CustomerID)
 on delete cascade
 on update cascade);
