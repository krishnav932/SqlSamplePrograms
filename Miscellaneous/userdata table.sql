create table userdata
(
username varchar(20),
password varchar(20),
phonenumber bigint,
emailid varchar(20)
)

select * from userdata

create procedure sp_regi(@username varchar(20),@password varchar(20),@phonenumber bigint,@emailid varchar(20))
as
begin
insert into userdata values(@username,@password,@phonenumber,@emailid)
end

