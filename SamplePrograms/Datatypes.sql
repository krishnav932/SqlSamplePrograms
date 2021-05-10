create table tblDataTypes
(
CharName char(2), /*used for fixed length only; 8000 char*/
VarCharName varchar(10), /* varying length, extra memory is released*/
VarCharmaxName varchar(max), /*upto 2GB*/
TinyIntNumber tinyint,
SmallIntNumber smallint,
IntNumber int,
BigIntNumber bigint,
DecimalNumber decimal(7,2), /*precision = total no of digits, scale= no of digits allowed after decimal*/
SmallMoneyCurrency smallmoney,
MoneyCurrency money,
DateClock date,
TimeClock time,
DateTimeClock datetime,
)

insert into tblDataTypes values('TS','Hyderabad',' Kavuri Hills Phase 2 Rd, Kavuri Hills, Madhapur, Telangana 500033',255,32767,2147483647,9.223372e+18
,50000.00,214748.3647,9223772036857.5807,GETDATE(),GETDATE(),GETDATE()),('TN','Chennai',' T Nagar Phase 2 Rd, Kavuri Hills, TamilNadu 500033',0,-32767,2147483646,1.223372e+18
,70000.00,114148.3647,458772036857.5807,GETDATE(),GETDATE(),GETDATE())

insert into tblDataTypes values('MH','Mumbai',' Nariman point Phase 2 R, Mumbai West, Maharastra 500033',100,12767,1147483647,2.223372e+18
,10000.00,114748.3647,3223772036857.5807,GETDATE(),GETDATE(),GETDATE())

select * from tblDataTypes 

drop table tblDataTypes

/* Binary Datatype*/
DECLARE @bin VARBINARY(MAX)
DECLARE @str varchar(MAX)
 
SET @str = 'Hello World'
SELECT @str          
 
SET @bin = CAST(@str AS VARBINARY(MAX))
SELECT @bin         
 
SET @str = CAST(@bin AS varchar(MAX))
SELECT @str         