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