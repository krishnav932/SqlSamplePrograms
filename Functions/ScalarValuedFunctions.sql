--creating function 
Create function calc(@a int,@b int,@op char(1)) returns int
as
begin 
declare @res int
if @op='+'
set @res =@a+@b
else if @op='-'
set @res =@a-@b
else if @op='*'
set @res =@a*@b
else if @op='/'
set @res = @a/@b
return @res
end

--executing function using sql commands
select dbo.calc(20,30,'*')

--another method of executing 
declare @x int,@y int, @z int
set @x=10
set @y=20
set @z= dbo.calc(@x,@y,'*')
print @z

--creating function to get names of employees of particular department
select * from employee

create function getnames(@d int) returns varchar(100)
as 
begin
declare c1 cursor for
select ename from employee where deptno = @d
declare @name varchar(20)
declare @s varchar(100)=' '
open c1
fetch next from c1 into @name
while(@@FETCH_STATUS=0)
begin
set @s = @s + @name+','
fetch next from c1 into @name
end
close c1
deallocate c1
return LEFT(@s,len(@s)-1)
end

--executing
select dbo.getnames(20)

--string_agg function
select deptno, string_agg(ename,',') within group(order by sal desc) as names
from employee
group by deptno
