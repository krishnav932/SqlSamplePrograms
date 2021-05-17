--local temporary table
create table #Capital --name of global temporary table can be duplicated  across multiple connections	
(
name varchar(20),
state varchar(20)
)


--Global temporary table
create table ##Urban -- name of global temporary table must be unique 
(
name varchar(20),
state varchar(20)
)

select * from ##Urban

