create table #City
(
name varchar(20),
state varchar(20)
)

insert into #City values('mumbai','hyderabad')

select * from #City  --local temporary table is available only for the connection that has created the table 

--query to find wheter our local temporary table is created or not
select name from tempdb..sysobjects			--object system table present in tempdb
where name like '#City%'

--Implicitly dropping local temporary table
--when connection is closed automatically local temporary table is dropped

--Explicitly dropping local temporary table
drop table #City

----------------

create procedure splocaltemporarytable
as 
begin
create table #City
(
name varchar(20),
state varchar(20)
)

insert into #City values('mumbai','hyderabad')

select * from #City
end

execute splocaltemporarytable --aft0er executing storedprocedure the temporary created by stored procedure is destroyed

select * from #City --if we try now it shows table is not present


