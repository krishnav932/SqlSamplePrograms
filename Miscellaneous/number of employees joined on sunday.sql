select count(*)
from emp
where datepart(dw,hiredate)=1