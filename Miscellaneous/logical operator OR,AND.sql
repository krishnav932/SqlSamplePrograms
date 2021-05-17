select * from emp
where 
job='clerk' or job='manager'
and 
sal>=5000 and sal<=10000
and
hiredate>='2020-01-01' and hiredate<='2020-12-31'