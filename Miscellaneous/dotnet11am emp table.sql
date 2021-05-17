create table emp
(
empno int,
ename varchar(20),
sal int
)

insert into emp values(1, 'james', 20000)
insert into emp values(2, 'scott', 10000)
insert into emp values(3, 'martin', 30000)

select * from emp
order by empno asc


create procedure sp_emp_fetch
as
begin
select * from emp 
end

create procedure sp_emp_insert(@empno int,@ename varchar(20),@sal int)
as
begin
insert into emp values(@empno,@ename,@sal)
end

create procedure sp_emp_update(@empno int,@ename varchar(20),@sal int)
as 
begin
update emp set ename=@ename, sal=@sal where empno=@empno
end

create procedure sp_emp_delete(@empno int)
as
begin
delete from emp where empno=@empno
end
