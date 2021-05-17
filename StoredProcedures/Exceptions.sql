--creating table
create table emp33
(
empid int primary key,
ename varchar(10) not null,
sal money check(sal>=3000)
)

--creating  procedure to insert records
create procedure insertrecords
@eno int,
@name varchar(10),
@amt money,
@msg varchar(100) output
as
begin try
insert into emp33 values(@eno,@name,@amt)
set @msg = 'record inserted successfully'
end try
begin catch
set @msg = ERROR_MESSAGE()
end catch

--executing procedure
--case 1:
declare @s varchar(100)
execute insertrecords 1,'A',5000,@s output
print @s

--case 2:
declare @s varchar(100)
execute insertrecords 1,'B',6000,@s output --empid is duplicated
print @s

--case 3:
declare @s varchar(100)
execute insertrecords 2,'A',1000,@s output --sal less than 3000
print @s

--executing the table to verify

select * from emp33

----------------------------------------
--creating table for accounts
create table accounts
(
accno int primary key,
bal money not null
)

insert into accounts values(100,10000),(101,20000)

select * from accounts

--create procedure to withdraw
create procedure debit
@accnum int,
@amt money,
@newbal money output
as 
declare @balance money,@count int
begin try
select @count = count(*) from accounts where accno = @accnum
if @count=0
raiserror('account doesnot exists',15,1)
select @balance=bal from accounts where accno = @accnum
if @amt > @balance
raiserror('insufficient balance',15,1)
update accounts set bal = bal-@amt where accno = @accnum
select @newbal = bal from accounts where accno = @accnum
end try
begin catch
print error_message()
end catch

--execution
declare @b money
execute debit 100,2000,@b output
print @b

--
--account opening procedure
create procedure accntopen
@accno int,
@bal money,
@msg varchar(100) output
as 
begin try
insert into accounts values(@accno,@bal)
set @msg='account opened successfully'
end try
begin catch
set @msg= ERROR_MESSAGE()
end catch
--execution
declare @s varchar(100)
execute accntopen 105,5000,@s output
print @s

--
--account closing procedure
create procedure accclose
@accno int,
@msg varchar(100) output
as 
begin try
delete from accounts where accno=@accno
set @msg='account closed successfully'
end try
begin catch
set @msg= ERROR_MESSAGE()
end catch
--execution
declare @s varchar(100)
execute accclose 105,@s output
print @s

---
--money transfer
create procedure transfer
@sacno int,
@tacno int,
@amt money,
@snewbal money output,
@tnewbal money output
as
declare @sbal money, @cnt int,@tbal money
begin try
select @cnt = count(*) from accounts where accno=@sacno
select @cnt = count(*) from accounts where accno=@tacno
if @cnt=0
raiserror('account doesnt exists',15,1)
select @sbal=bal from accounts where accno=@sacno
if @amt>@sbal
raiserror('insufficient balance',15,1)
update accounts set bal = bal-@amt where accno = @sacno
select @snewbal=bal from accounts where accno=@tacno
end try
begin catch
print error_message()
end catch

--money deposit
create procedure deposit
@amt money,
@accno int,
@newbal money output
as
declare @sbal money, @cnt int
begin try
select @cnt = count(*) from accounts where accno=@accno
if @cnt=0
raiserror('account doesnt exists',15,1)
update accounts set bal=bal+@amt where accno=@accno
if @amt>@sbal
raiserror('insufficient balance',15,1)
update accounts set bal = bal+@amt where accno = @accno
select @newbal=bal from accounts where accno=@accno
end try
begin catch
print error_message()
end catch