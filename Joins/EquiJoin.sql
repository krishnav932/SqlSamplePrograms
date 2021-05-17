--equijoin (=)
--returns only matched records
--adding dname , loc columns from dept table to employee table 

select empno, ename, sal, dname, loc
from employee, dept
where employee.deptno = dept.deptno


--trying to access deptno column
--since both the tables have same column name there will be ambiguous problem

select empno, ename, sal,deptno, dname, loc
from employee, dept
where employee.deptno = dept.deptno


--to remove ambiguity we use table alias

select e.empno, e.ename, e.sal,d.deptno, d.dname, d.loc
from employee as e, dept as d
where e.deptno = d.deptno

--using filter condition in equi join

select e.empno, e.ename, e.sal,d.deptno, d.dname, d.loc
from employee as e, dept as d
where e.deptno = d.deptno --this is join condition
and
d.loc = 'nagpur' --this is filter condition(selecting specific)

--ANSI style
select e.empno, e.ename, e.sal,d.deptno, d.dname, d.loc
from employee as e inner join dept as d
on e.deptno = d.deptno
where
d.loc = 'nagpur'

