create database SchoolDB

use SchoolDB

create table Students (ID int, Name varchar (50), Age int)

--insert 
insert into Students values (1, 'Aziz', 26)
insert into Students values (2, 'Ali', 30)
insert into Students values (3, 'Akbar', 24)
insert into Students values (4, 'Asad', 25)
insert into Students values (5, 'Ahmad', 22)
insert into Students (ID, Name) values (6, 'Tom')

select * from Students