create database emp_details;
use emp_details;
drop database emp_details;
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
use emp_details;
select e.ename, e.sal, d.dname
from emp e inner join dept d
on e.deptno = d.deptno;

SELECT e.*,d.* 
FROM emp e INNER JOIN dept d
ON e.deptno = d.deptno
WHERE e.deptno in (20,30);

SELECT e.ename, d.dname
FROM emp e INNER JOIN dept d
ON e.deptno = d.deptno
where e.comm is not null AND d.deptno  in (10,30);

SELECT e.*,d.*
FROM emp e CROSS JOIN dept d;
use emp_details;

SELECT e.*, d.*
FROM emp e NATURAL JOIN dept d;

SELECT count(e.ename),d.loc
FROM emp e INNER JOIN dept d
ON e.deptno = d.deptno
group by d.loc
HAVING count(e.empno) > 5;

SELECT e.ename, e.sal,d.dname 
FROM emp e INNER JOIN dept d
ON e.deptno = d.deptno
where d.dname = "ACCOUNTING";