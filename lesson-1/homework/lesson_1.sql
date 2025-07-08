--Easy
--1. Define the following terms: data, database, relational database, and table.
--Data refers to raw facts, figures, or information collected for reference or analysis. It can be numbers, text, images, or any other form of information that can be processed or analyzed.A database is an organized collection of data that is stored and managed electronically. It allows efficient storage, retrieval, and management of data.A relational database is a type of database that stores data in tables (also called relations), where data is organized into rows and columns. Tables can be linked or related to each other through keys, making it easy to manage complex data relationships.In a database, a table is a collection of data organized in rows and columns. Each row represents a record, and each column represents a field or attribute of the data.

--2. List five key features of SQL Server.
--1)High Performance and Scalability:SQL Server supports large databases and can handle a high volume of transactions efficiently, making it suitable for both small and enterprise-level applications.
--2)Security Features:It provides robust security measures such as encryption, authentication, authorization, and role-based access control to protect data.
--3)Integration Services (SSIS):SQL Server includes tools like SQL Server Integration Services (SSIS) to help with data migration, transformation, and workflow automation.
--4)Backup and Recovery:It offers reliable backup and recovery options to protect data and ensure business continuity in case of failure.
--5)Support for Advanced Analytics and Reporting:SQL Server supports built-in analytics, reporting services (SSRS), and integration with machine learning, enabling powerful data analysis and visualization.

--3. What are the different authentication modes available when connecting to SQL Server? (Give at least 2)
-- Medium
--SQL Server supports two main authentication modes when connecting to the server:
--1.Windows Authentication Mode
--	Uses the Windows user accounts and groups to authenticate users.
--	Relies on the underlying Windows security system, meaning users don't need to provide a separate username and password for SQL Server if they are already logged into Windows.
--	It is considered more secure because it uses integrated security features like Kerberos.
--2.SQL Server Authentication Mode
--  Requires users to provide a specific SQL Server username and password to connect.
--	Users are managed within SQL Server itself, independent of Windows accounts.
--	Useful in environments where Windows authentication isn't possible, such as when connecting from non-Windows systems or over the internet.

--4. Create a new database in SSMS named SchoolDB.
create database SchoolDB

use SchoolDB
--5. Write and execute a query to create a table called Students with columns: StudentID (INT, PRIMARY KEY), Name (VARCHAR(50)), Age (INT).

create table Students (StudentID INT, PRIMARY KEY, Name VARCHAR(50), Age INT);


select * from Students
--6. Describe the differences between SQL Server, SSMS, and SQL.
--1.SQL Server
--This is a relational database management system (RDBMS) developed by Microsoft.
--It’s the actual software/server that stores, manages, and processes data.
--It handles tasks like data storage, querying, transaction processing, security, and backups.
--2.SSMS (SQL Server Management Studio) interface 
--This is a graphical user interface (GUI) tool provided by Microsoft.
--It’s used to connect to, manage, and administer SQL Server instances.
--Allows users to write and execute SQL queries, design databases, configure security, manage backups, and monitor server performance.
--3.SQL (Structured Query Language)
--This is a programming language specifically designed for managing and querying data stored in relational databases.
--Used to write commands such as SELECT, INSERT, UPDATE, DELETE, and CREATE TABLE.
--SQL is the language you use inside SSMS or other database tools to interact with the data in SQL Server (or other databases).

Hard
--7. Research and explain the different SQL commands: DQL, DML, DDL, DCL, TCL with examples.
--1.DQL (Data Query Language)
--Used to query and retrieve data from the database.
--SELECT, FROM, UNION 
--For example:
--SELECT * FROM Employees WHERE Department = 'Sales';
--2.DML (Data Manipulation Language)
--Used to manipulate data stored in the database.
--INSERT, UPDATE, DELETE.
--For example:
--INSERT INTO Employees (Name, Unit, Salary) VALUES ('Jim', 'IT', 50000);
--UPDATE Employees SET Salary = 80000 WHERE Name = 'Jim';
--DELETE FROM Employees WHERE Name = 'Jim';
--3.DDL (Data Definition Language)
--Used to define or modify database structures like tables and schemas.
--CREATE, ALTER, DROP, TRUNCATE.
--For example:
--CREATE TABLE Employees (ID INT, Name VARCHAR(50), Department VARCHAR(50), Salary INT);
--ALTER TABLE Employees ADD Email VARCHAR(100);
--DROP TABLE Employees;
--4.DCL (Data Control Language)
--Used to control access and permissions to the database.
--GRANT, REVOKE.
--For example:
--GRANT SELECT ON Employees TO Jim;
--REVOKE SELECT ON Employees FROM Jim;
--5.TCL (Transaction Control Language)
--Used to manage transactions within the database, ensuring data integrity.
--COMMIT, ROLLBACK, SAVEPOINT.
--For examples:
--BEGIN TRANSACTION;
--ROLLBACK.

--8. Write a query to insert three records into the Students table.
insert into Students values (1, 'Aziz', 26)
insert into Students values (2, 'Ali', 30)
insert into Students values (3, 'Akbar', 24)
insert into Students values (4, 'Asad', 25)
insert into Students values (5, 'Ahmad', 22)
insert into Students (ID, Name) values (6, 'Tom')

--9. Restore AdventureWorksDW2022.bak file to your server. (write its steps to submit) You can find the database from this link :https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksDW2022.bak
