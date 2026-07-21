create database emp_details;
use emp_details;
CREATE TABLE DEPT (
    DEPTNO INT PRIMARY KEY,
    DNAME VARCHAR(14),
    LOC VARCHAR(13)
);
INSERT INTO DEPT VALUES
(10,'ACCOUNTING','NEW YORK'),
(20,'RESEARCH','DALLAS'),
(30,'SALES','CHICAGO'),
(40,'OPERATIONS','BOSTON');


CREATE TABLE EMP (
    EMPNO INT PRIMARY KEY,
    ENAME VARCHAR(10),
    JOB VARCHAR(20),
    MGR INT,
    HIREDATE DATE,
    SAL DECIMAL(7,2),
    COMM DECIMAL(7,2),
    DEPTNO INT,
    FOREIGN KEY (DEPTNO) REFERENCES DEPT(DEPTNO)
);

INSERT INTO EMP VALUES
(7369,'SMITH','CLERK',7902,'1980-12-17',800,NULL,20),
(7499,'ALLEN','SALESMAN',7698,'1981-02-20',1600,300,30),
(7521,'WARD','SALESMAN',7698,'1981-02-22',1250,500,30),
(7566,'JONES','MANAGER',7839,'1981-04-02',2975,NULL,20),
(7654,'MARTIN','SALESMAN',7698,'1981-09-28',1250,1400,30),
(7698,'BLAKE','MANAGER',7839,'1981-05-01',2850,NULL,30),
(7782,'CLARK','MANAGER',7839,'1981-06-09',2450,NULL,10),
(7788,'SCOTT','ANALYST',7566,'1982-12-09',3000,NULL,20),
(7839,'KING','PRESIDENT',NULL,'1981-11-17',5000,NULL,10),
(7844,'TURNER','SALESMAN',7698,'1981-09-08',1500,0,30),
(7876,'ADAMS','CLERK',7788,'1983-01-12',1100,NULL,20),
(7900,'JAMES','CLERK',7698,'1981-12-03',950,NULL,30),
(7902,'FORD','ANALYST',7566,'1981-12-03',3000,NULL,20),
(7934,'MILLER','CLERK',7782,'1982-01-23',1300,NULL,10);

select * from emp;
select * from dept;
select ename, sal, sal*12 as annual_sal
from emp;

select ENAME, SAL, SAL*12 as ANNUAL_SALARY, SAL*3 as QUARTERLY_SAL
from emp;

select ENAME, (SAL*12) - (SAL*12*23/100) as AFER_DETUCTION
from EMP;
select EMP.*, (SAL*12) - (SAL*12*23/100) as AFER_DETUCTION, (SAL*12)+(SAL*12*59/100) as AFER_59PER_HIKE
from EMP;

select EMP.*, (SAL*12)-(SAL*3*92/100) as AFER_92PER_DETUCTION
from EMP;

select distinct JOB
from EMP;

select distinct SAL
from EMP;

select ename from emp;
select sal from emp;

select ename, sal 
from emp;

select ENAME, SAL, DEPTNO 
from emp;

select sal, comm, sal+comm as totalAmount
from  emp;

SELECT ENAME,SAL, SAL+500 AS INCENTIVES
FROM EMP;

select * 
from emp
 where ename = 'smith';
 
--  emp details of the employee along with annual sal grater than 5000

SELECT *, sal*12 as Annual_sal
FROM emp
where sal*12>50000;

-- details of the employees whose dept is 20

SELECT * 
FROM emp
WHERE DEPTNO = 20;

-- DISPLAY THE NAME ,SLARY, AND ANNUAL SAL OF EMPLOYEES WHOSE ANNUAL SALARY IS MORE THAN 12000

SELECT ENAME, SAL, SAL*12 AS  ANUUEL_SAL
FROM emp
WHERE SAL*12>12000;

-- DISPLAY THE NAMES OF THE EMPLOYEES WORKING as sa;esman
SELECT ENAME, JOB
FROM EMP
WHERE JOB = 'SALESMAN';

SELECT ENAME, HIREDATE
FROM emp
WHERE HIREDATE < '1981-01-01';

SELECT 	ename, hiredate
FROM emp
where hiredate > '1981-12-31';

-- display hte datails of employee whose commision is greater than there salary

SELECT *
FROM EMP
WHERE comm>sal;

SELECT ename, sal 
FROM emp
where job = 'manager';

SELECT ENAME
FROM EMP
WHERE SAL<2500;

SELECT ENAME
FROM EMP
WHERE JOB = 'MANAGER';

SELECT *
FROM EMP
WHERE HIREDATE > '1980-12-31';

SELECT ename, sal, (sal+500) *12 as annula_sal
from emp;

select *
from emp
where deptno = 10 or deptno = 20; 

-- display ename of the dalary whose salaly is <30000 and job is president
SELECT ename
FROM emp
where sal<30000 AND job = 'president';

-- who are not working as salesman

SELECT *
FROM emp
where job != 'salesman';
SELECT *
FROM emp
where NOT job = 'salesman';

SELECT 	ename, hiredate, deptno
FROM emp
WHERE (hiredate>'1980-12-31') AND (hiredate>'1982-01-01') AND (deptno = 10);

use emp_details;
select * from emp;

select ename,deptno 
from emp
where deptno in (20,30);

SELECT *
FROM emp
WHERE job IN("salesman", "analyst") AND sal>1500;

SELECT *
FROM emp
WHERE job NOT IN("salesman", "analyst") AND sal>1500;

SELECT ename
FROM emp
where comm IS NULL;

SELECT ename
FROM emp
where comm IS NOT NULL;
 
 SELECT ename
 FROM emp
 WHERE mgr IS null;
 select * from emp;
 SELECT enames, sal 
 FROM emp
 where sal BETWEEN 500 AND 3000;
  SELECT ename, sal 
 FROM emp
 where sal NOT BETWEEN 500 AND 3000 AND (NOT job='president');
 
 SELECT *
 FROM emp
 WHERE ename LIKE '%a%';
  SELECT *
 FROM emp
 WHERE ename LIKE 'a%';
SELECT *
FROM emp
WHERE ename LIKE '%aa%';
SELECT *
FROM emp
WHERE ename LIKE '_d%';
SELECT ENAME,SAL
FROM emp
WHERE SAL LIKE '____.%';