create table tbleEmp
(
empid tinyint,
salary money,
commission money,
job varchar(100),
hiredate date,
)

insert into tbleEmp values(101, 50000, 5000, 'salesman', '1981-08-05')
insert into tbleEmp values(102, 30000, 2000, 'manager', '2020-05-08')
insert into tbleEmp values(103, 60000, 1000, 'hr', '2011-08-05')
insert into tbleEmp values(104, 40000, 3000, 'peon', '1999-08-02')

--updating salary and commission for salesman hired in 1981
update tbleEmp 
set salary= salary + (salary*0.2), commission=commission+(commission*0.1)
where job='salesman' and hiredate like '1981%'

update tbleEmp
set job= 'vice president' where hiredate > '2005-05-15'

select * from tbleEmp

alter table tbleEmp
alter column job varchar(100)

drop table tbleEmp