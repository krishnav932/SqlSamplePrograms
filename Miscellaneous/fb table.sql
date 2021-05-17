create table fbt
(
firstname varchar(30),
lastname varchar(30),
fathername varchar(30),
age int,
phno bigint,
address varchar(100),
username varchar(30),
password varchar(30),
confirmpassword varchar(30)
)

select * from fbt

delete from fbt

drop table fbt

create procedure sp_regs(@firstname varchar(30),@lastname varchar(30),@fathername varchar(30),@age int,@phno bigint,@address varchar(100),@username varchar(30),@password varchar(30),@confirmpassword varchar(30))
as
begin
insert into fbt values(@firstname,@lastname,@fathername,@age,@phno,@address,@username,@password,@confirmpassword)
end
