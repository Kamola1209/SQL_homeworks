-- Basic-Level Tasks (10)
-- 1. Create a table Employees with columns: EmpID INT, Name (VARCHAR(50)), and Salary (DECIMAL(10,2)).
create table Employees (EmpID INT, Name VARCHAR(50), Salary DECIMAL(10,2))

select * from  Employees

-- 2. Insert three records into the Employees table using different INSERT INTO approaches (single-row insert and multiple-row insert).
-- single-row insert
insert into Employees values (1, 'Kris Smith', '2000');

insert into Employees values (2, 'Bob Johnson', '4000');

insert into Employees values (3, 'Charlie Williams', '3000');

--multiple-row insert
insert into Employees values 
(4, 'John Kennedy', '5000'),
(5, 'Alice Brows', '7000'),
(6, 'Lucy Jeffery', '6000');

select * from Employees

-- 3. Update the Salary of an employee to 7000 where EmpID = 1.
update Employees set Salary=7000 where EmpID=1 

-- 4. Delete a record from the Employees table where EmpID = 2.
 delete from Employees where EmpID=2

-- 5. Give a brief definition for difference between DELETE, TRUNCATE, and DROP.
--Delete removes specific rows from a table; we use where condition, keeps structure;
--Truncate removes all rows from a table quickly; keeps structure;
--Drop deletes the entire table (structure and data).

-- 6. Modify the Name column in the Employees table to VARCHAR(100).
alter table Employees alter column Name varchar(100);

-- 7. Add a new column Department (VARCHAR(50)) to the Employees table.
alter table employees add Department VARCHAR(50);

-- 8. Change the data type of the Salary column to FLOAT.
alter table employees alter column salary float; 

-- 9. Create another table Departments with columns DepartmentID (INT, PRIMARY KEY) and DepartmentName (VARCHAR(50)).
create table Departments (DepartmentID INT PRIMARY KEY, DepartmentName VARCHAR(50), Salary decimal);

-- 10. Remove all records from the Employees table without deleting its structure.
Truncate table Employees 


-- Intermediate-Level Tasks (6)
-- 11. Insert five records into the Departments table using INSERT INTO SELECT method(you can write anything you want as data).
insert into Departments values 
(4, 'Finance', '5000'),
(5, 'IT', '7000'),
(6, 'HR', '6000');
-- 12.Update the Department of all employees where Salary > 5000 to 'Management'.
update Departments set departmentName = 'Management' where Salary > 5000;

-- 13.Write a query that removes all employees but keeps the table structure intact.
Truncate table Departments;

-- 14.Drop the Department column from the Employees table.
alter table employees drop column Department;

-- 15.Rename the Employees table to StaffMembers using SQL commands.
exec sp_rename 'Employees', 'StaffMembers';

-- 16.Write a query to completely remove the Departments table from the database.
drop table Departments 

--Advanced-Level Tasks (9)
--17. Create a table named Products with at least 5 columns, including: ProductID (Primary Key), ProductName (VARCHAR), Category (VARCHAR), Price (DECIMAL)
create table Products (ProductID int Primary Key, ProductName VARCHAR, Category VARCHAR, Price DECIMAL, Sales int)

--18. Add a CHECK constraint to ensure Price is always greater than 0.
select * from products where Price <= 0;

--19. Modify the table to add a StockQuantity column with a DEFAULT value of 50.
alter table products add StockQuantity Varchar(50)

--20. Rename Category to ProductCategory
exec sp_rename 'Category', 'ProductCategory';

--21. Insert 5 records into the Products table using standard INSERT INTO queries.
Insert into Products values
(1, 'pen', 'stationery', 100, 20),
(2, 'book', 'stationery', 500, 10),
(3, 'babana', 'food', 300, 80),
(4, 'apple', 'food', 200, 70);

--22. Use SELECT INTO to create a backup table called Products_Backup containing all Products data.
select * into Products_Backup from Products;

--23. Rename the Products table to Inventory.
EXEC sp_rename 'Products', 'Inventory';

--24. Alter the Inventory table to change the data type of Price from DECIMAL(10,2) to FLOAT.
alter table inventory alter column price float;

--25. Add an IDENTITY column named ProductCode that starts from 1000 and increments by 5 to Inventory table.
create table Inventory (ProductCode int Identity (1000, 5) Primary key, ProductName VARCHAR, Category VARCHAR, Price DECIMAL, Sales int)
