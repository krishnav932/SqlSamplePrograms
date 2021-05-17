create table employee
(
empno int identity(1,1),
ename varchar(20) not null,
sal money not null,
deptno tinyint 
)

insert into employee values('A', 5000, 10),('B', 3000, 20),('C', 4000, 30),('D', 2000, 10),('E', 3000, null)
select * from employee

create table dept
(
deptno tinyint,
dname varchar(20), --department name
loc varchar(10)
)
insert into dept values(10,'accounts','mumbai'),(20,'research','nagpur'),(30,'sales','orissa'),(40,'operations','pune')
select * from dept