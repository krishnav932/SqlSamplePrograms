create table emp
(
empid tinyint,
ename varchar(10),
job varchar(10),
sal smallmoney,
hiredate date,
)

insert into emp values(100,'sachin','clerk',3000,'2020-05-02'),(101,'vijay','manager',8000,getdate()),(102,'satish','analyst',10000,getdate()),(103,'ravi','clerk',4000,getdate())

insert into emp values(104,'rahul',null,null,getdate())

insert into emp(empid,ename,hiredate)
values(105,'kumar',getdate())

alter table emp
add comm smallmoney

update emp
set comm=500

alter table emp
add deptno tinyint

update emp
set deptno=10 
where empid=100

update emp
set deptno=20 
where empid=101

update emp
set deptno= 30
where empid=102
 
update emp
set deptno= 40
where empid=103

update emp
set deptno= 40
where empid=104

update emp
set deptno= 50
where empid=105

update emp
set deptno= 60
where empid=106

select * from emp

update emp
set comm=800
where deptno=30

insert into emp values(106,'hari','salesman',20000,'1981-06-25',1000,60)

update emp
set sal=sal+sal*0.2, comm=comm+comm*0.1
where job='salesman'
and
hiredate like '1981%'

delete from emp
where ename like 's%'

update emp
set sal=null
where empid=103

alter table emp
add gender char(1)

select * from emp

update emp
set gender='m'
where empid=101

update emp
set gender='m'
where empid=103

update emp
set gender='m'
where empid=104

update emp
set gender='m'
where empid=106

alter table emp
drop column gender 

alter table emp
alter column ename varchar(30)

update emp
set ename= upper(ename)

select * from emp