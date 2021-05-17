create table student
(
sno tinyint,
sname varchar(20),
m tinyint,
p tinyint,
c tinyint
)

insert into student values(1,'A',80,90,70),(2,'B',60,50,70),(3,'C',90,80,70),(4,'D',90,70,80)

select * 
from student
order by (m+p+c) desc, m desc, p desc
