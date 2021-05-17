--not allow dml on sunday
Create trigger t1
on emp
after insert, update, delete
as
begin
if datename(dw,getdate()) = 'sunday'
begin 
rollback
raiserror('sunday not allowed',15,1)
end
end

--trigger to allow 
--mon-fri 10am to 4pm
--sat 10am to 2pm
--not on sunday
Create trigger t2
on emp
after insert, update, delete
as
begin
if datename(dw,getdate()) between 2 and 6
and
datename(hh,getdate()) not between 10 and 16
begin
rollback
raiserror('only between 10am and 4pm',15,1)
end
else if datename(dw,getdate()) ='saturday'
and 
datepart(hh,getdate()) not between 10 and 14
begin
rollback
raiserror('only between 10am and 2pm',15,1)
end
else if datename(dw,getdate())='sunday'
begin
rollback
raiserror('sunday not allowed',15,1)
end
end


update employee set sal=1000 where empno=4

select * from employee 