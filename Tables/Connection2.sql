create table #Capital
(
name varchar(20),
state varchar(20)
)

--accesing global temporary table from other connection 
select * from ##Urban

--global temporary table are destroyed when the last connection referrencing the table is closed