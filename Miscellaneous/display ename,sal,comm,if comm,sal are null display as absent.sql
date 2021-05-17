select ename,isnull(cast(sal as varchar),'absent') as sal,isnull(cast(comm as varchar),'absent') as comm
from emp