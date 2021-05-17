--list of employees working for dept
create function getemplist(@d int) returns table
as
return (select * from employee where deptno=@d)

select * from employee

--execution
select * from dbo.getemplist(10)

--return top n employee list based on salary
create function gettopn(@n int) returns table
as
return
(
select * from 
(
select empno, ename, sal, dense_rank() over (order by sal desc) as rnk from employee) as E
where rnk<= @n
)

--execution
select * from dbo.gettopn(3)


--balance enquiry function

create function balance_enquiry(@accno int)
returns table
as
return (select bal from accounts where accno=@accno)

--execution
select * from dbo.balance_enquiry(100)

--statement between start and end dates

create table transactions
(
accno int,
tdate date
)

select * from transactions

insert into transactions values(100, '2021-05-02')
insert into transactions values(100, '2021-05-12')

create function statement(@acno int,@startdate date,@enddate date)
returns table
as
return(select * from transactions where accno=@acno and tdate between @startdate and @enddate)