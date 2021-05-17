select * from emp
where
sal between 5000 and 10000

select * from emp
where
job in('clerk','manager')
and
sal between 5000 and 10000
and
hiredate between '2020-01-01' and '2020-12-31'

select * from emp
where
hiredate between '2020-04-01' and '2020-04-30'