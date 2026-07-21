show databases;
use emp_details;
select * from emp;
select ename,sal,sal*12 As Annual_Sal
from emp;
select ename,sal,sal+100 as salAdded
from emp;
select ename,sal,sal-500 as salDedected
from emp;
select ename,sal,(sal*20/100)+sal as salHike
from emp;
select ename,sal,comm, sal+ifnull(comm,0) as totalSal
from emp;
select * from 
emp 
where sal>3000;
select * from 
emp 
where sal<2000;
select * from 
emp 
where sal>=2500;
select * from 
emp 
where sal<1500;

select * from 
emp 
where deptno = 10;
select * from 
emp 
where deptno = 30;

select * from 
emp 
where job = "clerk";

select * from 
emp 
where sal >= 2000 and deptno = 10;
SELECT *
FROM EMP
WHERE SAL > 1500
AND JOB = 'SALESMAN';
SELECT *
FROM EMP
WHERE DEPTNO = 20
OR DEPTNO = 30;
SELECT *
FROM EMP
WHERE JOB = 'CLERK'
OR JOB = 'ANALYST';
SELECT *
FROM EMP
WHERE SAL > 2500
OR COMM > 500;
SELECT *
FROM EMP
WHERE NOT SAL > 3000;

