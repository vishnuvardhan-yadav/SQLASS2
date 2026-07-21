show databases;


use emp_details;
select * from emp;
select count(*)  as total_employeees
from emp;

select count(*), deptno
from emp 
group by deptno;

select count(*) sal, sum(sal),deptno
from emp 
group by deptno;

select count(*)
from emp
where ename like '%A%'
group by deptno;

select max(sal), min(sal),deptno
from emp
group by deptno;

select count(*)
from emp
where hiredate >'1980-12-31'
and hiredate < '1987-01-01'
and sal between 1000 and 5000
group by deptno;

select sum(sal),job
from emp
group  by job;

select count(*),sal
from emp 
group by sal;

select count(*),deptno
from emp
group by deptno
having count(*) >= 4;

-- Having caluse-- 

select deptno, count(*)
from emp
where job = "clerk"
group by deptno
having count(*) >=2;

select deptno, sum(sal)
from emp 
group by deptno
having count(*) >=4;

select count(*),sum(sal)
from emp 
where sal > 1200
group by job
having sum(sal) >3800;

SELECT deptno,
       COUNT(*) AS total_managers
FROM emp
WHERE job = 'MANAGER'
GROUP BY deptno
HAVING COUNT(*) = 2;

select job, max(sal) 
from emp
group by job
having max(sal)>2600;

select count(*) from
emp
group by sal
having count(*) >1;

SELECT hiredate
FROM emp
GROUP BY hiredate
HAVING COUNT(*) > 1;

select avg(sal),deptno
from emp
group by deptno
having avg(sal)<3000;

select deptno,count(*)
from emp
where ename like '%a%'
or ename like '%a%'
group by deptno
having count(*) >=3;

SELECT job,
       MIN(sal) AS minimum_salary,
       MAX(sal) AS maximum_salary
FROM emp
GROUP BY job
HAVING MIN(sal) > 1000
   AND MAX(sal) < 5000;
   
   
-- order by--    
select * 
from emp 
order by sal asc;

select * 
from emp 
order by sal desc;

SELECT deptno,
       COUNT(*) AS total_employees
FROM emp
WHERE ename LIKE '%A%'
   OR ename LIKE '%E%'
GROUP BY deptno
ORDER BY total_employees ASC;

select *
from emp
order by deptno asc, sal desc;

select count(*),deptno as emp 
from emp 
where job not in ("president")
group by deptno;

select job, sum(sal) as totalsal
from emp
group by job;

SELECT deptno, COUNT(*) AS total_managers
FROM emp
WHERE job = 'MANAGER'
GROUP BY deptno;

SELECT deptno, AVG(sal) AS average_salary
FROM emp
WHERE deptno <> 20
GROUP BY deptno;

SELECT job, COUNT(*) AS total_employees
FROM emp
WHERE ename LIKE '%A%'
GROUP BY job;

SELECT deptno,
       COUNT(*) AS total_employees,
       AVG(sal) AS average_salary
FROM emp
WHERE sal > 2000
GROUP BY deptno;

   SELECT deptno,
       SUM(sal) AS total_salary,
       COUNT(*) AS total_salesmen
FROM emp
WHERE job = 'SALESMAN'
GROUP BY deptno;
   
   SELECT job,
       COUNT(*) AS total_employees,
       MAX(sal) AS maximum_salary
FROM emp
GROUP BY job;
   
SELECT deptno,
       MAX(sal) AS maximum_salary
FROM emp
GROUP BY deptno;

SELECT sal,
       COUNT(*) AS occurrences
FROM emp
GROUP BY sal;






