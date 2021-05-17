select * from emp
where
job in('clerk','manager')

select * from emp
where
job not in('clerk','manager')

select * from emp
where
empid in(100,103,105)