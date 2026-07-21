show databases;
use emp_details;
select * from emp;
select count(*)
from emp;

select deptno,count(*)
from emp 
group by deptno;

select deptno, count(*),sum(sal)as totalSal
from emp
group by deptno;

select deptno, count(*)
from emp 
where ename like'%A%'
group by deptno;

select min(sal), max(sal)
from emp
group by deptno;

select count(*)
from emp
where HIREDATE > '1980-12-31'
AND HIREDATE < '1987-01-01'
and sal between 1000 and 5000
group by deptno;

select sum(sal) as totalsal
from emp
group by job;

select sal,count(*)
from emp
group by sal;

select deptno,count(*) as totalEmployees
from emp 
group by deptno
having count(*) >=4;

select deptno, count(*)
from emp 
where job = "clerk"
group by deptno
having count(*) >=2;

select deptno,sum(sal)
from emp 
group by deptno
having count(*) >= 4;

SELECT JOB,
       COUNT(*) AS TOTAL_EMPLOYEES,
       SUM(SAL) AS TOTAL_SALARY
FROM EMP
WHERE SAL > 1200
GROUP BY JOB
HAVING SUM(SAL) > 3800;
 
