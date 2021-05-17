--self join

create table professional
(
empno tinyint identity(1,1),
ename nvarchar(5) not null,
manager varchar(20)
)

insert into professional values('A',null),('B',1),('C',1),('D',2),('E',3)

alter table professional
add  sal money

select * from professional

update professional
set sal= 1000 where empno = 1

update professional
set sal= 3000 where empno = 2
update professional
set sal= 2000 where empno = 3
update professional
set sal= 1000 where empno = 4
update professional
set sal= 5000 where empno = 5
----
--same table is declared two times with different alias x, y
select x.ename, y.ename as manager
from professional x, professional y
where x.manager = y.empno

--employees reporting to manager B
select x.ename, y.ename as manager
from professional x, professional y
where x.manager = y.empno
and
y.ename ='B'

--name of B's Manager
select x.ename, y.ename as manager
from professional x, professional y
where x.manager = y.empno
and
x.ename ='B'

--employees earning more than their manager
select x.ename, y.ename as manager, x.sal, y.sal as managersal
from professional x, professional y
where x.manager = y.empno
and
x.sal > y.sal

--employees earning less than their manager
select x.ename, y.ename as manager, x.sal, y.sal as managersal
from professional x, professional y
where x.manager = y.empno
and
x.sal < y.sal

--ANSI style

select x.ename, y.ename as manager, x.sal, y.sal as managersal
from professional x join professional y
on x.manager = y.empno
where
x.sal < y.sal
