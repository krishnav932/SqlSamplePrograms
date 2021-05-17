create table registration
(
firstname varchar(20),
lastname varchar(20),
contact bigint,
gender varchar(6),
address varchar(100),
username varchar(10),
password varchar(20),
)

select * from registration

create procedure sp_regs (@firstname varchar(20),@lastname varchar(20),@contact bigint,@gender varchar(10),@address varchar(100),@username varchar(20),@password varchar(20))
as
begin
insert into registration values(@firstname,@lastname ,@contact,@gender ,@address ,@username ,@password)
end


