--outerjoin
--returns unmatched records
------------------
--left outer join
--matched + unmatched from left table but only matched from right table

select e.empno, e.ename, e.sal,d.deptno, d.dname, d.loc
from employee as e left outer join dept as d
on e.deptno = d.deptno


--right outer join
--matched + unmatched from right table but only matched from left table

select e.empno, e.ename, e.sal,d.deptno, d.dname, d.loc
from employee as e right outer join dept as d
on e.deptno = d.deptno


--full outer join
--returns all rows from both tables

select e.empno, e.ename, e.sal,d.deptno, d.dname, d.loc
from employee as e full outer join dept as d
on e.deptno = d.deptno



