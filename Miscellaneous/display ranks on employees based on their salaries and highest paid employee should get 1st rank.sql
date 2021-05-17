select ename,sal,rank()over(order by sal desc) as rnk
from emp