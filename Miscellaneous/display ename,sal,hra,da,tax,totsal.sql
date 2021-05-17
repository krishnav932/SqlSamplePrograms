select ename,sal,
sal*0.2 as hra,
sal*0.3 as da,
sal*0.1 as tax,
sal+(sal*0.2)+(sal*0.3)-(sal*0.1) as totsal 
from emp