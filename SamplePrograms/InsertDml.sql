create table tblEmployees
(
EmpId tinyint,
Ename varchar(10),
Job varchar(10),
Sal smallmoney,
HireDate date
)
--single row insertion
Insert Into tblEmployees  
Values(100,'sachin','clerk',3000,'2020-05-02')
Insert Into tblEmployees
Values(101,'vijay','manager',8000,getdate())
--multiple row insertion
Insert Into tblEmployees
Values(102,'satish','analyst',10000,getdate()),
(103,'ravi','clerk',4000,getdate())
--explicit null insertion
Insert Into tblEmployees
Values(104,'rahul',null,null,getdate())
--implicit null insertion
Insert Into tblEmployees(Empid,ename,hiredate)
Values(105,'kumar',getdate())

select * from tblEmployees

