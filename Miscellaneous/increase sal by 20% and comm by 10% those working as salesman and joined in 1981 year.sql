insert into emp values(106,'hari','salesman',20000,'1981-06-25',1000,60)

update emp
set sal=sal+sal*0.2, comm=comm+comm*0.1
where job='salesman'
and
hiredate like '1981%'
