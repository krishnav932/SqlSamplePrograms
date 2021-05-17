create table employee
(
empno int identity(1,1),
ename varchar(20) not null,
sal money not null,
deptno tinyint 
)

select * from employee

--static procedure
--Create Procedure UpdateSalary
--As
--Update employee set sal = sal + 1000 where empno = 4


--dynamic procedure
Create Procedure UpdateSalarys
@eno int,
@amt money
As
Update employee set sal=sal+@amt where empno =@eno


--executing
--Through positional notation
execute UpdateSalarys 4,1000 

execute UpdateSalarys 1000,4 --can't change the order

--through named notation

execute UpdateSalarys @eno=4, @amt = 1000 

execute UpdateSalarys @amt=1000, @eno = 4 --can change the order

--output parameter
create procedure UpdateDetails
@amt money,
@eno int,
@newsal money output
as
update EmployeeDetails set empsalary = empsalary+@amt where empid = @eno
select @newsal=empsalary from EmployeeDetails where empid =@eno

--executing output parameter to frontend
declare @s money
execute UpdateDetails 1000,4,@s output
print @s 
