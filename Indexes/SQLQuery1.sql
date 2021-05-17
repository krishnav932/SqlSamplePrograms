--simple index
create index i1 on employee(sal)

select * from employee where sal = 3000
select * from employee where sal >= 3000
select * from employee where sal <= 3000
select * from employee where sal <> 3000

select * from employee

--composite index
create index i2 on employee(deptno,ename)

select * from employee where deptno=10 and ename='D'

--unique index
create unique index i3 on employee(ename)

insert into employee(ename, sal) values('B',6000)

--
create index ixSal
on employee(sal asc)

sp_helpindex employee  --stored procedure to check the index of a table

drop index employee.ixsal --dropping particular index of table

execute sp_helpindex employee --To check the index having clustered or non clustered, unique or nonunique

--clustered index determines physical order of data in table. A table has only one clustered table	
--primary key automatically create clustered index

create table empl
(
empno int primary key, 
ename varchar(20) not null,
sal money not null,
deptno tinyint 
)


select * from empl

sp_helpindex empl

--because of primary key the data inserted in ascending order
insert into empl values(3,'ram',10000,30),(2,'laxman',30000,20),(1,'bharat',20000,10)
insert into empl values(4,'mani',40000,30),(5,'krishna',30000,20)
--composite index
create clustered index ixempl
on empl (deptno asc, sal desc) --deptno is arranged in asc order then sal is arranged in descending


drop index empl.ixempl
drop index empl.ixemply
drop index empl.ixemplyename

--non clustered index
create nonclustered index ixemply
on empl (sal asc)

create nonclustered index ixemplyename
on empl (ename desc)