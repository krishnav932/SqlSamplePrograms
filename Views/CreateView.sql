--first table
create table EmployeeDetails
(
empid int identity(1,1) not null,
empname nvarchar(100) not null,
empcity nvarchar(100) not null,
empsalary int not null
)

Insert Into EmployeeDetails Values('ram','hyd',25000)  
Insert Into EmployeeDetails Values('shyam','mum',26000)  
Insert Into EmployeeDetails Values('ravi','bglr',27000)  
Insert Into EmployeeDetails Values('Sandeep','delhi',28000)  
Insert Into EmployeeDetails Values('suraj','kol',32000)  

select * from EmployeeDetails
--second table
create table EmployeeContacts
(
empid int not null,
mobileno nvarchar(15) not null
)


Insert Into EmployeeContacts Values(1,'9813220191')  
Insert Into EmployeeContacts Values(2,'9813220192')  
Insert Into EmployeeContacts Values(3,'9813220193')  
Insert Into EmployeeContacts Values(4,'9813220194')  
Insert Into EmployeeContacts Values(5,'9813220195') 

select * from EmployeeContacts

--creating simple view
Create View V1  
as  
select * from EmployeeDetails

--creating complex view
Create View V2  
as  
select EmployeeDetails.empid,EmployeeDetails.empname,EmployeeDetails.empsalary,EmployeeContacts.mobileno
from EmployeeDetails  Left Outer Join  EmployeeContacts   
on  
EmployeeDetails.empid= EmployeeContacts.empid  
Where EmployeeDetails.empid>2
--retrieving data from view
select * from V1 -- inplace of v1 it is represented internally as select * from EmployeeDetails 
select * from V2
--dropping the view
drop view V1
--renaming the view
sp_rename V1,view1 
select * from view1
--Getting Information about a view
Sp_Helptext view1
Sp_Helptext V2
--alter the view by changing condition
alter View V2  
as  
select EmployeeDetails.empid,EmployeeDetails.empname,EmployeeDetails.empsalary,EmployeeContacts.mobileno
from EmployeeDetails  Left Outer Join  EmployeeContacts   
on  
EmployeeDetails.empid= EmployeeContacts.empid  
Where EmployeeDetails.empid>2 and empcity='bglr'

select * from V2
---alter by adding extra column
Alter Table EmployeeDetails Add mysal nvarchar(50

select * from EmployeeDetails --we can see the newly added column
select * from view1 --still we can't see the newly added column because the schema of the view will not change	

--sp_refreshview
exec sp_refreshview view1 --the stored procedure refreshes the metadata of view

select * from EmployeeDetails
select * from view1 --now we can see the newly added column
--schema binding in view (restricts all kinds of changes that may change the table schema )
create view v3 
with schemabinding
as
select empid,empname,empcity,empsalary,mysal from dbo.EmployeeDetails --schema binding dont allow *, we need to mention all column names manually
--with encryption(will not be visible via SP_HELPTEXT)
Create view v4  
with Encryption  
as  
select empid,empname,empsalary,empcity from dbo.EmployeeDetails  

Exec sp_helptext v4
-----DML on views
--Insert DML

Insert into v3 values(6,'mani',45000,9854712365)

Insert into v3 values(7,'suraj',45000,9854712365)
select * from v3
--delete dml
delete from v3 where empid=5
--update dml
update v3 set empname='mohan' where empid = 3
