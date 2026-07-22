show databases;
use emp_details;
select * from emp;
select * from dept;

select * from emp where sal >
(select avg(sal) from emp);

SELECT *
FROM emp
WHERE sal <
(
    SELECT AVG(sal)
    FROM emp
);
select * from emp where deptno in
(select deptno from dept where loc in('new york', 'dallas'));

SELECT *
FROM emp
WHERE deptno IN
(
    SELECT deptno
    FROM dept
    WHERE loc IN ('CHICAGO', 'BOSTON')
);

SELECT *
FROM emp
WHERE deptno IN
(
    SELECT deptno
    FROM dept
    WHERE dname IN ('ACCOUNTING', 'SALES')
);

select * from emp 
where job in (
select job from emp where deptno = 10
);

SELECT *
FROM emp
WHERE sal > ANY
(
    SELECT sal
    FROM emp
    WHERE job = 'CLERK'
);

SELECT *
FROM emp
WHERE sal < ANY
(
    SELECT sal
    FROM emp
    WHERE job = 'ANALYST'
);

SELECT *
FROM emp
WHERE sal > ALL
(
    SELECT sal
    FROM emp
    WHERE job = 'SALESMAN'
);
SELECT *
FROM emp
WHERE sal > ALL
(
    SELECT sal
    FROM emp
    WHERE deptno = 10
);
