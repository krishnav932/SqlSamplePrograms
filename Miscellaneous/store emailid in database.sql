alter table emp
add emailid varchar(20)

update emp
set emailid=left(ename,3)+left(empid,3)+'@tcs.com'

select * from emp