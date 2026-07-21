show databases;
use emp_details;
select * from emp;
select count(*) 
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
and hiredate < 1987-01-01
and sal between 1000 and 5000
group by deptno;

select max(sal),job
from emp
group  by sal;

select count(*),sal
from emp 
group by sal;








