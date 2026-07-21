show databases;
use emp_details;
select * from emp;
select * from dept;



select e.*, d.*
from emp e 
join dept d 
on e.deptno = d.deptno
where e.sal > (select sal from emp where ename = 'martin');

select e.ename,
		e.sal,
        e.deptno,
        d.loc
from emp e
 join dept d 
on e.deptno = d.deptno 
where e.hiredate > '1981-12-31' 
and e.deptno in (10,20);

SELECT d.loc,
       COUNT(*) AS total_employees
FROM emp e
INNER JOIN dept d
ON e.deptno = d.deptno
GROUP BY d.loc;

SELECT d.dname,
       e.hiredate
FROM emp e
JOIN dept d
ON e.deptno = d.deptno
WHERE e.hiredate > '1983-12-31'
AND d.dname IN ('ACCOUNTING','RESEARCH');

SELECT e.ename,
       d.dname
FROM emp e
JOIN dept d
ON e.deptno = d.deptno
WHERE e.comm IS NOT NULL
AND e.deptno IN (10,30);

select d.dname, e.empno
from emp e
inner join dept d 
where e.empno in (7839,7902)
and d.loc = 'new york';

SELECT *
FROM emp
NATURAL JOIN dept;

SELECT ename,
       dname,
       loc
FROM emp
NATURAL JOIN dept;

select e.ename,d.dname
from emp e
inner join dept d 
on e.deptno = d.deptno 
where e.job = 'clerk'; 

select e.ename,e.sal,d.loc
from emp e 
inner join dept d 
on e.deptno = d.deptno
where sal > 1500;

select e.ename, d.dname, e.hiredate 
from emp e 
inner join dept d 
on e.deptno = d.deptno 
where hiredate > '1981-12-31';

SELECT *
FROM emp
NATURAL JOIN dept;

SELECT ename,
       dname,
       loc
FROM emp
NATURAL JOIN dept;

SELECT e.ename,
       d.dname
FROM emp e
INNER JOIN dept d
ON e.deptno = d.deptno
WHERE e.job = 'CLERK';

SELECT e.ename,
       d.dname
FROM emp e
LEFT JOIN dept d
ON e.deptno = d.deptno;

SELECT e.ename,
       e.deptno,
       d.dname
FROM emp e
LEFT JOIN dept d
ON e.deptno = d.deptno;

select e.ename, d.dname
from emp e 
left join dept d 
on e.deptno = d.deptno 
where d.dname = 'sales' or
d.dname is null;

select e.ename, e.hiredate,d.dname,d.loc
from emp e
left join dept d 
on e.deptno = d.deptno;

SELECT e.*,
       d.*
FROM emp e
LEFT JOIN dept d
ON e.deptno = d.deptno
ORDER BY e.ename;

SELECT d.dname,
       e.ename,
       e.job,
       e.hiredate
FROM emp e
INNER JOIN dept d
ON e.deptno = d.deptno;

SELECT d.dname,
       COUNT(e.empno) AS total_employees
FROM emp e
RIGHT JOIN dept d
ON e.deptno = d.deptno
GROUP BY d.dname;

SELECT d.dname,
       e.ename,
       e.sal
FROM dept d
LEFT JOIN emp e
ON d.deptno = e.deptno
WHERE e.sal > 3000
   OR e.empno IS NULL;
   
SELECT *
FROM dept d
LEFT JOIN emp e
ON d.deptno = e.deptno;   

SELECT *
FROM dept d
LEFT JOIN emp e
ON d.deptno = e.deptno;

select e.ename, e.sal, d.dname, d.loc 
from emp e
left join dept d 
on e.deptno = d.deptno

Union

SELECT e.ename,
       e.sal,
       d.dname,
       d.loc
FROM emp e
LEFT JOIN dept d
ON e.deptno = d.deptno

UNION

SELECT e.ename,
       e.sal,
       d.dname,
       d.loc
FROM emp e
RIGHT JOIN dept d
ON e.deptno = d.deptno;
SELECT e.deptno,
       e.empno
FROM emp e
LEFT JOIN dept d
ON e.deptno = d.deptno
union
SELECT d.deptno,
       e.empno
FROM emp e
RIGHT JOIN dept d
ON e.deptno = d.deptno;

SELECT *
FROM emp e
LEFT JOIN dept d
ON e.deptno = d.deptno

UNION

SELECT *
FROM emp e
RIGHT JOIN dept d
ON e.deptno = d.deptno;

SELECT e.ename,
       d.dname,
       d.loc
FROM emp e
INNER JOIN dept d
ON e.deptno = d.deptno;