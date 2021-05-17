--creating tables
create table emps
(
empno tinyint identity(1,1),
ename nvarchar(20),
sal money
)

insert into emps values('A',2500),('B',4000),('C',1000),('D',3000),('E',1500)

select * from emps
---
create table salgrade
(
grade tinyint identity(1,1),
lowsalary money,
highsalary money
)

insert into salgrade values(700,1000),(1001,2000),(2001,3000),(3001,4000),(4001,9999)

select * from salgrade
drop table salgrade
---
--non equi join
select e.ename,e.sal, s.grade
from emps e, salgrade s
where e.sal between s.lowsalary and s.highsalary

--using filtering condition
select e.ename,e.sal, s.grade
from emps e, salgrade s
where e.sal between s.lowsalary and s.highsalary --join condition
and 
s.grade =3 --filtering condition

---
--ANSI style
select e.ename,e.sal, s.grade
from emps e join salgrade s
on e.sal between s.lowsalary and s.highsalary 
where
s.grade = 3 and sal=2500

-----