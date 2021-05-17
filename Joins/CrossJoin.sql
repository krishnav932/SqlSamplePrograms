create table employee
(
empno int identity(1,1),
ename varchar(20) not null,
sal money not null,
deptno tinyint 
)

create table dept
(
deptno tinyint,
dname varchar(20), --department name
loc varchar(10)
)

--cross join
select e.ename, d.dname
from emp e, dept d