select substring('hello welcome',7,4)
---
select replicate('*',5)
---
select replace('hello','l','z')
---
select getdate()
---
select datename(dw,getdate())

select datename(mm,getdate())

---
select dateadd(dd,10,getdate())
select dateadd(dd,-10,getdate())
select dateadd(mm,10,getdate())
select dateadd(mm,-10,getdate())
select dateadd(yyyy,10,getdate())
select dateadd(yyyy,-10,getdate())
----
select datepart(yyyy,getdate())
select datepart(mm,getdate())
select datepart(dd,getdate())
select datepart(dw,getdate())
select datepart(hh,getdate())
select datepart(mi,getdate())
select datepart(ss,getdate())
---
select round(38.4567273,0)

select round(38.4567273,2)

select round(38.4534,2)

select round(38.4567273,4)

select round(323,-1)

select round(386,-2)

select round(380,-3)
----
select ceiling(3.1)
----
select floor(3.9)
--
select cast(10.5 as int)
--
select convert(int,10.5)

select convert(varchar,getdate())

select convert(varchar,getdate(),100)

select convert(varchar,getdate(),101)

select convert(varchar,getdate(),102)

select convert(varchar,getdate(),103)

select convert(varchar,getdate(),104)
select convert(varchar,getdate(),105)

select convert(varchar,getdate(),106)

select convert(varchar,getdate(),107)

select convert(varchar,getdate(),108)

select convert(varchar,getdate(),109)

select convert(varchar,getdate(),110)

select convert(varchar,getdate(),111)

select convert(varchar,getdate(),112)

select convert(varchar,getdate(),113)

select convert(varchar,getdate(),114)
---
select isnull(null,200)

select isnull(100,200)
---
select ename,sal,rank()over(order by sal desc) as rnk
from emp
---
select ename,sal,hiredate,dense_rank() over(order by sal desc,hiredate asc) as rnk
from emp
---
select sno,sname,m,p,c,dense_rank() over (order by (m+p+c)/3 desc,m desc,p desc) as rnk
from student

----
select max(sal) 
from emp

select max(hiredate)
from emp
----
select min(sal)
from emp

select min(hiredate)
from emp
---
select sum(sal)
from emp
---
select ceiling(avg(sal))
from emp
---