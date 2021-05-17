select ename,sal,hiredate,dense_rank() over(order by sal desc,hiredate asc) as rnk
from emp