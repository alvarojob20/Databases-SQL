/* RETRIEVE ALL ROWS*/ 

SELECT * 
FROM EMPLOYEES;

SELECT * 
FROM DEPARTMENTS;

/* For each department ID retrieve the number of employees in the 
department. */

SELECT DEP_ID, COUNT (*) AS COUNT
FROM EMPLOYEES
GROUP BY DEP_ID;

/* For each department retrieve the number of employees in the department,
 and the average employee salary in the department. */

SELECT D.DEP_NAME, COUNT (E.EMP_ID) , AVG(E.SALARY)
FROM EMPLOYEES AS E, DEPARTMENTS AS D
WHERE D.DEPT_ID_DEP = E.DEP_ID
GROUP BY D.DEP_NAME;

/* Label the computed columns in the result set of SQL problem 2 
as NUM_EMPLOYEES and AVG_SALARY. */

SELECT D.DEP_NAME, COUNT (E.EMP_ID) AS "NUM_EMPLOYEES", AVG(E.SALARY) AS "AVG_SALARY"
FROM EMPLOYEES AS E, DEPARTMENTS AS D
WHERE D.DEPT_ID_DEP = E.DEP_ID
GROUP BY D.DEP_NAME;

/* In SQL problem 3 (Exercise 3 Problem 3), order the result set by 
Average Salary. */

SELECT D.DEP_NAME, COUNT (E.EMP_ID) AS "NUM_EMPLOYEES", AVG(E.SALARY) AS "AVG_SALARY"
FROM EMPLOYEES AS E, DEPARTMENTS AS D
WHERE D.DEPT_ID_DEP = E.DEP_ID
GROUP BY D.DEP_NAME
ORDER BY AVG_SALARY;

/* In SQL problem 4 , limit the result to departments with fewer than 
4 employees. */

SELECT D.DEP_NAME, COUNT (E.EMP_ID) AS "NUM_EMPLOYEES", AVG(E.SALARY) AS "AVG_SALARY"
FROM EMPLOYEES AS E, DEPARTMENTS AS D
WHERE D.DEPT_ID_DEP = E.DEP_ID 
GROUP BY D.DEP_NAME
HAVING COUNT (E.EMP_ID) < 4
ORDER BY AVG_SALARY

