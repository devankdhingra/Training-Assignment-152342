-- Display all the information of the EMP table?
select * from emp;

-- Display unique Jobs from EMP table?
select distinct job from emp;

-- List the emps in the asc order of their Salaries?
select ename,sal from emp order by sal;

-- List the details of the emps in asc order of the Dptnos and desc of Jobs?
select ename,empno,deptno,job from emp order by deptno,job desc;

-- Display all the unique job groups in the descending order?
select distinct job from emp order by job desc;

-- Display all the details of all ‘Mgrs’
select empno,ename,deptno,job,sal,comm from emp where mgr is not null;

-- List the emps who joined before 1981
select empno,ename from emp where HIREDATE<='1-JAN-1981';

-- List the Empno, Ename, Sal, Daily sal of all emps in the asc order of Annsal
select empno,ename,sal+nvl(comm,0) as salary,round((sal+nvl(comm,0))/30,2) as daily_sal from emp where mgr is not null order by daily_sal;

-- Display the Empno, Ename, job, Hiredate, Exp of all Mgrs
select empno,ename,job,hiredate,round((trunc(sysdate)-trunc(hiredate))/365,0) as exp_year from emp where mgr is not null;

-- List the Empno, Ename, Sal, Exp of all emps working for Mgr 7369
select deptno,empno,ename,sal,round((trunc(sysdate)-trunc(hiredate))/365,0) as exp_year from emp where mgr=7369 and mgr is not null;

-- Display all the details of the emps whose Comm  Is more than their Sal
select empno,ename,sal,comm from emp where comm>sal;

-- List the emps along with their Exp and Daily Sal is more than Rs 100
select ename,empno,round((trunc(sysdate)-trunc(hiredate))/365,0) as exp,round((sal+nvl(comm,0))/30,2) as daily_sal from emp where round((sal+nvl(comm,0))/30,2)>100;

-- List the emps who are either ‘CLERK’ or ‘ANALYST’ in the Desc order
select ename,job,sal from emp where job in('CLERK','ANALYST') order by job desc;

-- List the emps who joined on 1-MAY-81,3-DEC-81,17-DEC-81,19-JAN-80 in asc order of seniority
select ename,hiredate,job,sal from emp where hiredate in('1-MAY-81','3-DEC-81','17-DEC-81','19-JAN-80') order by hiredate;

-- List the emp who are working for the Deptno 10 or20
select ename,deptno from emp where deptno in(10,20) order by deptno;

-- List the emps who are joined in the year 81
select ename,hiredate,sal from emp where hiredate>='1-JAN-1981' and hiredate<='31-DEC-1981' order by hiredate;

-- List the emps Who Annual sal ranging from 22000 and 45000
select ename,sal,comm from emp where (sal+nvl(comm,0))*12>=22000 and 12*(sal+nvl(comm,0))<=45000;
    
-- List the Enames those are having five characters in their Names
select ename,empno from emp where ename like '_____';    

-- List the Enames those are starting with ‘S’ and with five characters
select ename from emp where ename like 'S____';

-- List the emps those are having four chars and third character must be ‘r’
select ename from emp where ename like '__R_';

-- List the Five character names starting with ‘S’ and ending with ‘H’
select ename from emp where ename like 'S___H';

-- List the emps who joined in January
select ename,hiredate from emp where hiredate like '___01%';

-- List the emps whose names having a character set ‘ll’ together
select ename from emp where ename like '%LL%';

-- List the emps who does not belong to Deptno 20
select ename,deptno from emp where deptno not in (20) order by deptno;

-- List all the emps except ‘PRESIDENT’ & ‘MGR” in asc order of Salaries
select ename,sal,job from emp where job not in('PRESIDENT','MANAGER') order by sal;

-- List the emps whose Empno not starting with digit78
select ename,empno from emp where empno not like '78%' order by empno;

-- List the emps who are working under ‘MGR’
select ename from emp where mgr is not null;

-- List the emps who joined in any year but not belongs to the month of March
select ename,hiredate from emp where hiredate not like('___03%') order by hiredate;

-- List all the Clerks of Deptno 20
select ename,deptno,job from emp where job='CLERK' and deptno=20;

-- List the emps of Deptno 30 or 10 joined in the year 1981
select ename,hiredate,deptno from emp where deptno in(10,30) and hiredate like('%81');

-- Display the details of SMITH
select * from emp where ename='SMITH';

-- Display the location of SMITH
SELECT emp.ename,branch.location FROM branch INNER JOIN emp ON emp.ename='SMITH' AND emp.branchno=branch.branchno;
        
        
