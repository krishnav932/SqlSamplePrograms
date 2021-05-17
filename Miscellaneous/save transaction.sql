create table a(a int)
begin transaction
insert into a values(10)
insert into a values(20)
insert into a values(30)
insert into a values(40)
insert into a values(50)
insert into a values(60)
rollback

select * from a

drop table a



create table a(a int)
begin transaction
insert into a values(10)
insert into a values(20)
save transaction st1
insert into a values(30)
insert into a values(40)
save transaction st2
insert into a values(50)
insert into a values(60)
rollback transaction st1

select * from a