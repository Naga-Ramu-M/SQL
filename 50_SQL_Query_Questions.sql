/* https://www.techbeamers.com/sql-query-questions-answers-for-practice/#sql-queries */

/*Q-1*/
select first_name as worker_name from worker;

/*Q-2*/
Select upper(FIRST_NAME) from Worker;

/*Q-3*/
SELECT distinct department FROM worker;

/*Q-4*/
SELECT LEFT(first_name, 3) FROM worker;
SELECT SUBSTRING(first_name, 1, 3) FROM worker;

/*Q-5. Write An SQL Query To Find The Position Of The Alphabet (‘A’) In The First Name Column ‘Amitabh’ From Worker Table.*/
SELECT POSITION("A" IN first_name) FROM worker WHERE first_name = "Amitabh";
SELECT INSTR(first_name, "A") FROM worker WHERE first_name = "Amitabh";

/*Q-6. Write An SQL Query To Print The FIRST_NAME From Worker Table After Removing White Spaces From The Right Side.*/
SELECT RTRIM(first_name) FROM worker;

/*Q-7. Write An SQL Query To Print The DEPARTMENT From Worker Table After Removing White Spaces From The Left Side.*/
SELECT LTRIM(department) FROM worker;

/*Q-8. Write An SQL Query That Fetches The Unique Values Of DEPARTMENT From Worker Table And Prints Its Length.*/
SELECT DISTINCT department, LENGTH(department) AS departmentNameLength FROM worker;

/*Q-9. Write An SQL Query To Print The FIRST_NAME From Worker Table After Replacing ‘A’ With ‘A’.*/
SELECT REPLACE(first_name, "a", "A") FROM worker;

/*Q-10. Write An SQL Query To Print The FIRST_NAME And LAST_NAME From Worker Table Into A Single Column COMPLETE_NAME. A Space Char Should Separate Them.*/
SELECT CONCAT(first_name, " ", last_name) AS complete_name FROM worker;

/*Q-11. Write An SQL Query To Print All Worker Details From The Worker Table Order By FIRST_NAME Ascending.*/
SELECT * FROM worker ORDER BY first_name ASC;

/*Q-12. Write An SQL Query To Print All Worker Details From The Worker Table Order By FIRST_NAME Ascending And DEPARTMENT Descending.*/
SELECT * FROM worker ORDER BY first_name ASC, department DESC;

/*Q-13. Write An SQL Query To Print Details For Workers With The First Name As “Vipul” And “Satish” From Worker Table.*/
SELECT * FROM worker WHERE first_name IN ("Vipul", "Satish");
 
/*Q-14. Write An SQL Query To Print Details Of Workers Excluding First Names, “Vipul” And “Satish” From Worker Table.*/
SELECT * FROM worker WHERE first_name NOT IN ("Vipul", "Satish");
 
/*Q-15. Write An SQL Query To Print Details Of Workers With DEPARTMENT Name As “Admin”.*/
SELECT * FROM worker WHERE department = "Admin";
 
/*Q-16. Write An SQL Query To Print Details Of The Workers Whose FIRST_NAME Contains ‘A’.*/
SELECT * FROM worker WHERE first_name LIKE "%a%";
 
/*Q-17. Write An SQL Query To Print Details Of The Workers Whose FIRST_NAME Ends With ‘A’.*/
SELECT * FROM worker WHERE first_name LIKE "%a";
 
/*Q-18. Write An SQL Query To Print Details Of The Workers Whose FIRST_NAME Ends With ‘H’ And Contains Six Alphabets.*/
SELECT * FROM worker WHERE first_name LIKE "_____h";
 
/*Q-19. Write An SQL Query To Print Details Of The Workers Whose SALARY Lies Between 100000 And 500000.*/
SELECT * FROM worker WHERE salary BETWEEN 100000 AND 500000;
 
/*Q-20. Write An SQL Query To Print Details Of The Workers Who Have Joined In Feb’2014.*/
SELECT * FROM worker WHERE joining_date LIKE "2014-02%";
SELECT * FROM worker WHERE year(joining_date) = 2014 AND month(joining_date) = 2;
 
/*Q-21. Write An SQL Query To Fetch The Count Of Employees Working In The Department ‘Admin’.*/
SELECT COUNT(*) FROM worker WHERE department = "Admin";