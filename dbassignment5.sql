create database DBAssignment5;
use DBAssignment5;

Create table EMP ( 
EMPNO numeric(4) not null, 
ENAME varchar(30) not null, 
JOB varchar(10), 
MGR numeric(4), 
HIREDATE date, 
SAL numeric(7,2), 
DEPTNO numeric(2)); 
 
Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO ) values(1000,  'Manish' , 'SALESMAN', 1003,  '2020-02-18', 600,  30) ;
Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO ) values(1001,  'Manoj' , 'SALESMAN', 1003,  '2018-02-18', 600,  30) ;
Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO ) values(1002 , 'Ashish', 'SALESMAN',1003 , '2013-02-18',  750,  30 );
Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO ) values(1004,  'Rekha', 'ANALYST', 1006 , '2001-02-18', 3000,  10);
Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO ) values(1005 , 'Sachin', 'ANALYST', 1006 ,  '2019-02-18', 3000, 10 );
Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO ) values(1006,  'Pooja',  'MANAGER'  , null , '2000-02-18' ,6000, 10 );
select * from EMP;

Create table dept (
dno numeric(4) not null, 
dname varchar(10) not null,
area varchar(30));

Insert into dept(dno,dname,area) values(10,'Store','Mumbai');
Insert into dept(dno,dname,area) values(20,'Purchase','Mumbai');
Insert into dept(dno,dname,area) values(30,'Store', 'Delhi');
Insert into dept(dno,dname,area) values(40,'Marketing','Pune');
Insert into dept(dno,dname,area) values(50,'Finance','Delhi');
Insert into dept(dno,dname,area) values(60,'Accounts','Mumbai');
select *from dept;

-- QUE1
DELIMITER $$
CREATE PROCEDURE SP1(IN VAR1 INT, IN VAR2 INT)
BEGIN
SELECT VAR1 + VAR2;
SELECT VAR1 - VAR2;
SELECT VAR1 * VAR2;
SELECT VAR1 / VAR2;
END $$
CALL SP1(20,10);

-- QUE2
DELIMITER $$
CREATE PROCEDURE SP2(INOUT STR VARCHAR(50))
BEGIN
SET STR= (SELECT reverse(STR));
END $$
SET @STR='DATABASE';
CALL SP2(@STR);
SELECT @STR;

-- QUE3
DELIMITER $$
CREATE PROCEDURE SP3()
BEGIN
SELECT EMPNO,ENAME,SAL FROM EMP ORDER BY SAL DESC LIMIT 5;
END $$
CALL SP3();

-- QUE4
DELIMITER $$
CREATE PROCEDURE SP4()
BEGIN
CREATE TABLE EMP_TEST (E_ID INT,E_NAME VARCHAR(10),E_JOINING_DATE DATE);
END $$
CALL SP4();

-- QUE5
DELIMITER $$
CREATE PROCEDURE SP5(IN VAR1 NUMERIC(4),IN VAR2 VARCHAR(10),IN VAR3 VARCHAR(20))
BEGIN
INSERT INTO DEPT(DNO,DNAME,AREA) VALUES (VAR1,VAR2,VAR3);
END $$
CALL SP5(60,'Education','Pune');

--  QUE6
DELIMITER $$
CREATE PROCEDURE SP6(IN VAR INT)
BEGIN
SET @NUM =VAR;
SELECT @NUM, POWER(@NUM,2) AS SQUARE, POWER (@NUM,3) AS CUBIC;
END $$
CALL SP6(5);

-- QUE7
DELIMITER $$
CREATE PROCEDURE SP7(OUT ANS INT)
BEGIN
SET ANS=3;
END $$
CALL SP7(@ANS);
SELECT @ANS;

-- QUE8
DELIMITER $$
CREATE PROCEDURE SP8(IN INPUT INT,OUT OUTPUT INT)
BEGIN
SET @A=INPUT;
SET OUTPUT =INPUT+2;
END $$
CALL SP8(2,@OUTPUT);
SELECT @OUTPUT;

-- EXTRA 
DELIMITER $$
CREATE PROCEDURE SP10(IN X INT,OUT STR VARCHAR(50))
BEGIN
SELECT concat(E.ENAME,' IS FROM ',D.DNAME) INTO STR  FROM EMP E INNER JOIN DEPT D ON D.DNO=E.DEPTNO WHERE E.DEPTNO=X AND E.EMPNO=1004;
END $$
CALL SP10(10,@STR);
SELECT @STR