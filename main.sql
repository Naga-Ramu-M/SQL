CREATE TABLE Worker (
	WORKER_ID INT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);


INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
	

--- Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as<WORKER_NAME>.
--- SELECT FIRST_NAME as WORKER_NAME from  Worker
--- Q-2  Write an SQL query to fetch unique values of DEPARTMENT from Worker table.

--- SELECT DISTINCT DEPARTMENT from Worker

---Q-3. Write an SQL query to show the last 5 record from a table.

---SELECT * from Worker ORDER by WORKER_ID DESC limit 5

---4- Write an SQL query to print the first three characters of FIRST_NAME from Worker table.

---SELECT SUBSTRING(FIRST_NAME,1,3) FROM Worker;

---5- Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.
---SELECT Locate('a', FIRST_NAME) from Worker where FIRST_NAME = "Amitabh";

---6 Write an SQL query to print the name of employees having the highest salary in each department.
---SELECT * FROM Worker w WHERE salary = (select Max(salary) from Worker where department = w.department)


---7  Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
---select RTRIM(FIRST_NAME) From Worker;

---8 Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
---select distinct(DEPARTMENT), length(DEPARTMENT) from Worker;

--- 9 Write an SQL query to fetch nth max salaries from a table
---SELECT DISTINCT(SALARY) FROM Worker ORDER BY SALARY DESC LIMIT 2 OFFSET 1;

---10 Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.
---select replace(FIRST_NAME, 'a', 'A') from Worker

---11 Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
---select *from Worker ORDER BY FIRST_NAME ASC, DEPARTMENT Desc

---12Write an SQL query to fetch the names of workers who earn the highest salary.
---select FIRST_NAME,LAST_NAME from Worker where SALARY = (select max(SALARY) from Worker);

---13 Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.
---select *from Worker where FIRST_NAME NOT in("Vipul", "Satish")
---14 Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
---select * from Worker where FIRST_NAME like "_____h"
---15 Write a query to validate Email of Employee.
---select *from worker where Email like "_%@_%._%"
---I dont have the email column for above

---16 Write an SQL query to print details of the Workers who have joined in Feb’2014.
---select * from worker where year(JOINING_DATE)= 2014 and month(JOINING_DATE)= 02;
---SELECT * FROM Worker WHERE JOINING_DATE LIKE "%14-02%"

---17  Write an SQL query to fetch duplicate records having matching data in some fields of a table.
---select column_name, count(column_name) from Worker group by field having count(column_name)>1;

---18  How to remove duplicate rows from Employees table.
CREATE TABLE Employee (
    ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    COUNTRY VARCHAR(50)
);
INSERT INTO Employee VALUES 
(1,'ADITYA','VARMA','INDIA'),
(2,'ADITYA','VARMA','INDIA'),
(3,'ADITYA','VARMA','INDIA'),
(4,'STEVE','JOBS','USA'),
(5,'STEVE','JOBS','USA'),
(6,'STEVE','JOBS','USA');

---select*from Employee

---remove e1.* from employee e1 INNER JOIN employee e2 WHERE e1.id > e2.id AND e1.FIRST_NAME = e2.FIRST_NAME AND e1.LAST_NAME = e2.LAST_NAME AND e1.COUNTRY = e2.COUNTRY


---19 Write an SQL query to show only odd rows from a table.
---select *from Worker WHERE mod(WORKER_ID,2)= 1

---20Write an SQL query to clone a new table from another table.
---CREATE TABLE CloneWorker (
 ---   WORKER_ID INT PRIMARY KEY,
  ---  FIRST_NAME VARCHAR(50),
    ---LAST_NAME VARCHAR(50),
    ---SALARY INT,
  ---  DEPARTMENT VARCHAR(50),
---    JOINING_DATE DATETIME
---);
---# Code to Clone content of a table to another table
---INSERT INTO CloneWorker SELECT * FROM Worker;

---select * from CloneWorker

---21  Write an SQL query to fetch intersecting records of two tables.

---SELECT <Column_names> FROM table_1 INTERSECT SELECT <Column_names> FROM table_2;

---22 Write an SQL query to show records from one table that another table does not have.
---SELECT * FROM table_1 EXCEPT SELECT * FROM table_2;
---23 Write an SQL query to show the top n (say 10) records of a table.
SEl

