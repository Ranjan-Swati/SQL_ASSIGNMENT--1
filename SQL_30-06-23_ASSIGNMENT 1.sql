CREATE DATABASE ORG;
USE ORG;

CREATE TABLE Worker(
WORKER_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY INT(15),
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
);

SELECT * FROM WORKER; 

 SELECT WORKER_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE DATETIME,
 DEPARTMENT;
INSERT INTO Worker VALUES
 (001,'Monika','Arora',100000,'14-02-20 09.00.00','HR'),
 (002,'Niharika','Verma',80000,'14-06-11 09.00.00','Admin'),
 (003,'Vishal','Singhal',300000,'14-02-20 09.00.00','HR'),
 (004,'Amitabh','Singh',500000,'14-02-20 09.00.00','Admin'),
 (005,'Vivek','Bhati',500000,'14-06-11 09.00.00','Admin'),
 (006,'Vipul','Diwan',200000,'14-06-11 09.00.00','Account'),
 (007,'Satish','Kumar',75000,'14-01-20 09.00.00','Account'),
 (008,'Geetika','Chauhan',90000,'14-04-11 09.00.00','Admin'); 

-- Write an SQL query to fetch "FIRST_NAME" from the worker table using the alias name <WORKER_NAME>.
SELECT FIRST_NAME AS WORKER_NAME FROM WORKER;

-- Write an SQL query to fetch unique values of DEPARTMENT from the worker table.
SELECT DISTINCT DEPARTMENT FROM WORKER;

-- Write an SQL query to print the first three characters of FIRST_NAMR from the workers table.
SELECT LEFT(FIRST_NAME,3)FROM WORKER;

-- Write an SQL query that feches the unique values of DEPARTMENT from the worker table and prints its length.
SELECT DISTINCT DEPARTMENT, LENGTH(DEPARTMENT) FROM WORKER;

-- Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending
SELECT * FROM WORKER 
ORDER BY FIRST_NAME ASC, DEPARTMENT DESC;

-- Write an SQL query  to print details of Workers with DEPARTMENT name as "Admin".
SELECT * FROM WORKER 
WHERE DEPARTMENT = "ADMIN";

-- Write an SQL query to print details of the workers whose SALARY lies between 100000 and 500000.
SELECT * FROM WORKER WHERE SALARY >=100000 AND SALARY <=500000;

-- Write an SQL query to fetch worker names with salaries >=50000 and <=100000.
SELECT * FROM WORKER WHERE SALARY >=50000 AND SALARY <=100000;

-- Write an SQL query to show only even rows from the WORKER table.
SELECT* FROM WORKER WHERE worker_id % 2= 0;

-- Write an SQL query to print details of the workers who joined in Feb'2014.
SELECT * FROM WORKER WHERE JOINING_DATE BETWEEN "2014-02-01" AND "2014-02-28";