create table cust
(
cid tinyint,
cname varchar(20),
age tinyint,
city varchar(10),
phone bigint
)
sp_help cust

insert into cust values(1,'sachin',20,'hyd',9876543210),(2,'vijay',21,'mum',9876543211),(3,'satish',22,'del',9876543212)
select * from cust