create table Managers
(
Id tinyint,
Name varchar(10),
Department varchar(10),
Salary smallmoney,
HireDate date
)

--alter commands

--adding column using alter

alter table Managers
add gender char(1)

--dropping column using alter
alter table Managers
drop column Salary 

--modifying column datatype using alter
alter table Managers
alter column Id int --changing tinyint to int

--modifying(increase/decrease) column field size 
alter table Managers
alter column Name varchar(20)


select * from Managers

sp_help Managers