-- Create a new database called 'ProgrammingSchool'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT [name]
        FROM sys.databases
        WHERE [name] = N'ProgrammingSchool'
)

CREATE DATABASE ProgrammingSchool
GO

use ProgrammingSchool

CREATE TABLE Student (
[First Name] VARCHAR(10),
[Age] INTEGER
)
SELECT * from dbo.Student;

insert into Student ([First Name],[Age]) VALUES ('Henok',20);
SELECT * from Student

use master
Go

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student]') AND type in (N'U'))
DROP TABLE [dbo].[Student]
GO


use ProgrammingSchool
Go

SELECT * from Student;


create table dbo.emp (
EMPNO int,
ENAME varchar(50),
JOB varchar(20), 
MGR varchar(10), 
HIREDATE date, 
SAL money, 
COMM money,
DEPTNO int
);

create table dbo.dept (
DEPTNO int,
DNAME varchar(15),
LOC varchar(20)
);

insert into dbo.dept (DEPTNO, DNAME, LOC) 
values (10, 'ACCOUNTING', 'NEW YORK'),
(20,'RESEARCH', 'DALLAS'),
(30,'SALES', 'CHICAGO'),
(40,'OPERATIONS', 'BOSTON');

insert into dbo.emp (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values 
(7369, 'SMITH','CLERK','7902','17-DEC-2005', 800,0, 20)
,(7499,'ALLEN','SALESMAN','7698','20-FEB-2006', 1600, 300, 30)
,(7521,'WARD','SALESMAN','7698','22-FEB-2006', 1250, 500, 30)
,(7566,'JONES','MANAGER','7839','02-APR-2006', 2975,0, 20)
,(7654,'MARTIN','SALESMAN','7698','28-SEP-2006', 1250, 1400, 30)
,(7698,'BLAKE','MANAGER','7839','01-MAY-2006', 2850, 0, 30)
,(7782,'CLARK','MANAGER','7839','09-JUN-2006', 2450, 0, 10)
,(7788,'SCOTT','ANALYST','7566','09-DEC-2007', 3000, 0, 20)
,(7839,'KING','PRESIDENT','','17-NOV-2006', 5000, 0, 10)
,(7844,'TURNER','SALESMAN','7698','08-SEP-2006', 1500, 0, 30)
,(7876,'ADAMS','CLERK', '7788','12-JAN-2008', 1100, 0,20)
,(7900,'JAMES','CLERK','7698','03-DEC-2006', 950, 0,  30)
,(7902,'FORD','ANALYST','7566','03-DEC-2006', 3000, 0, 20)
,(7934,'MILLER','CLERK','7782','23-JAN-2007', 1300, 0, 10);


select * from dbo.emp;
select * from dbo.dept;

-- Select rows from a Table or View '[emp]' in schema '[dbo]'
SELECT DEPTNO,SUM(sal) as totalSum FROM [dbo].[emp]
WHERE emp.DEPTNO=10
group by DEPTNO
GO
