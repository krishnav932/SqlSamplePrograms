select ename,hiredate,datediff(mm,hiredate,getdate())/12 as years,datediff(mm,hiredate,getdate())%12 as months
from emp


select ename,hiredate,datediff(yyyy,hiredate,getdate()) as years,datediff(mm,hiredate,getdate())%12 as months
from emp