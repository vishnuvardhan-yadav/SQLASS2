show databases;
use emp_details;
select * from emp;
select * from dept;

select * from emp 
where deptno = (
select deptno 
from dept 
where dname = 'Accounting');

select *
 from emp 
 where deptno = (
	select deptno from dept 
	where dname = "REsearch"
);


SELECT *
FROM emp
WHERE deptno = (
    SELECT deptno
    FROM dept
    WHERE dname = 'SALES'
);

SELECT *
FROM emp
WHERE deptno = (
    SELECT deptno
    FROM dept
    WHERE dname = 'OPERATIONS'
);

SELECT *
FROM emp
WHERE sal >
(
    SELECT sal
    FROM emp
    WHERE ename = 'SCOTT'
)
AND sal <
(
    SELECT sal
    FROM emp
    WHERE ename = 'KING'
);

select * 
from emp
where ename like 'A%' and deptno = 
(select deptno from emp where ename = "blake"
);

select ename, comm 
from emp 
where job = (
select job from emp where ename = 'smith'
);


select * 
from emp 
where job = 'clerk' 
and deptno =
(select deptno from emp where ename = 'turner');

SELECT ename, sal, job
FROM emp
WHERE sal * 12 >
(
    SELECT sal * 12
    FROM emp
    WHERE ename = 'SMITH'
)
AND sal * 12 <
(
    SELECT sal * 12
    FROM emp
    WHERE ename = 'KING'
);

select *
from emp 
where sal > 
(select sal from emp where ename = 'allen')
and deptno = 
(select deptno from emp where ename = 'miller');