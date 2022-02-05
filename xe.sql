-- 11.4 Sort the all employees details as per department in ascending by emp no descending
SELECT 
empno,ename,job,mgr,sal,deptno,comm
from
emp
order by
deptno,empno desc;

-- 11.5 Sort the all employees details as per department no, salary
select
empno,ename,job,mgr,sal,comm,deptno
from
emp
order by
deptno,sal;

-- 12. WHERE CLAUSE
-- 12.1 Display all emp working in deptno 10
select
empno,ename
from
emp
where
deptno=10
order by
empno;

-- 12.3 Display all employees working in department no 10 or 20
select
empno,ename,deptno
from
emp
where
deptno in(10,20)
order by
empno;

-- 12.4 Display all employees not working in 10,20,30
select
deptno,empno,ename
from 
emp
where
deptno not in(10,20,30)
order by
deptno,empno;

-- 12.4 Display all employees not working in any department i.e. deptno is null
select
deptno,empno,ename
from 
emp
where
deptno is null;

-- 12.4 Display all employees who is working in some department i.e. deptno not null
select
deptno,empno,ename
from 
emp
where
deptno is not null;

-- 12.8 Display all employees not earning any commission
select
deptno,empno,ename,comm
from 
emp
where
comm not in(0);

-- 12.9 Display all employees earning salary in range 1000 to 3000 including boundry values
select
deptno,empno,ename,sal
from 
emp
where
sal>=1000 and sal<=3000;

-- 13.2 Display all details of EMPLOYEE who's name starts with S
select
deptno,empno,ename,sal
from 
emp
where
ename like 'S%';

-- 13.3 Display all details of EMPLOYEE who's name ends with S
select
deptno,empno,ename,sal
from 
emp
where
ename like '%S';

-- 13.4 Display all details of EMPLOYEE who's name contains LL
select
deptno,empno,ename,sal
from 
emp
where
ename like '%LL%';


-- 14. Aggregate Function max,min,sum,avg,count 
-- 14.1 Display count of employees
select
count(*)
from 
emp;

- 14.2 Display count of employees WORKING IN SOME DEPT
select
count(deptno),count(empno)
from 
emp;

-- 14.3 Display max,min,sum,avg salary of employees
select
count(empno),max(sal),min(sal),avg(sal)
from 
emp;

