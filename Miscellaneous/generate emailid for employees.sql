create table emp4
(
empno int,
ename varchar(20),
)

insert into emp4 values(7369,'smith'),(7499,'allen')


select empno,ename,left(ename,3)+left(empno,3)+'@tcs.com' as emailid from emp4


