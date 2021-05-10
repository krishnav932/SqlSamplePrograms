create table tbleEmp
(
empid tinyint,
salary money,
commission money,
job varchar(10),
hiredate date,
)

insert into tbleEmp values(101, 50000, 5000, 'salesman', '1981-08-05')
insert into tbleEmp values(102, 30000, 2000, 'manager', '2020-05-08')
insert into tbleEmp values(103, 60000, 1000, 'hr', '2011-08-05')
insert into tbleEmp values(104, 40000, 3000, 'peon', '1999-08-02')

--truncate command
truncate table tbleEmp --eliminates all rows but table structure remains

select * from tbleEmp