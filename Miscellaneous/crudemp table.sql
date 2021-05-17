create table crudemp
(
empno int,
ename varchar(20),
sal int
)

select * from crudemp

create procedure sp_crudemp_read
as
begin
select * from crudemp
end

create procedure sp_crudemp_insert(@empno int,@ename varchar(20), @sal int)
as
begin
insert into crudemp values(@empno,@ename,@sal)
end

create procedure sp_crudemp_update(@empno int,@ename varchar(20), @sal int)
as
begin
update crudemp set ename=@ename, sal=@sal where empno=@empno
end

create procedure sp_crudemp_delete(@empno int)
as
begin
delete from crudemp where empno=@empno
end