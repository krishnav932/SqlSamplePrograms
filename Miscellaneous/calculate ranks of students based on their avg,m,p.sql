select sno,sname,m,p,c,dense_rank() over (order by (m+p+c)/3 desc,m desc,p desc) as rnk
from student
