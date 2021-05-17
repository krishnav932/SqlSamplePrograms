select ename+' joined on '+cast(hiredate as varchar) as "date of joining" /*double quotes used when alias name has spaces*/
from emp