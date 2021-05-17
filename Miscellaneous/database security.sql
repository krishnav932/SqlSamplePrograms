use [master]
go
create login[naresh] with password=N'123'
go



use[kotturuvamshi]
go
create user[vijay] for login[naresh]
go


grant select,insert,update,delete on emp to vijay

revoke select,insert,update,delete on emp from vijay

