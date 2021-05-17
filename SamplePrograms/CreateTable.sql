create table tblEmployees
(
EmpId tinyint,
Ename varchar(10),
Job varchar(10),
Sal smallmoney,
HireDate date
)


select * from tblEmployees
----------------------------

create table example
(
nvarchartype nvarchar(20),
varchartype varchar(20), 
chartype char(20),
nchartype nchar(20)
)


insert into example values('¥','¥','¥','¥')


select * from example

delete example

drop table example