show databases;
use emp_details;
select * from emp;
select empno, ename, job
from emp;
select ename, sal 
from emp;
select ename,sal*12 as annualSal
from emp;
select ename,sal,(sal*10/100)+sal as incrementSal
from emp;
select ename,sal,comm, sal+ifnull(comm,0) as totalIncone
from emp;
select ename,sal*12 as annulasal,(sal*12)+ifnull(comm,0)
from emp;
SELECT empno,
       ename,
       deptno,
       hiredate
FROM emp;
select  distinct job
from emp;
SELECT DISTINCT deptno
FROM emp;
SELECT DISTINCT mgr
FROM emp;
SELECT ename AS Employee_Name,
       sal AS Monthly_Salary
FROM emp;
SELECT ename AS Employee_Name,
       job AS Job,
       deptno AS Department_Number,
       sal * 12 AS Annual_Salary
FROM emp;
SELECT emp.*,
       sal * 12 AS Annual_Salary
FROM emp;
select * from dept;


