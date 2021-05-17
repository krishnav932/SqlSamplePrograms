sp_rename 'emp.bonus','comm'

select ename,sal,comm,isnull(comm,0)+isnull(sal,0) as totsal
from emp

