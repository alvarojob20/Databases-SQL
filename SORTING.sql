/* RETRIEVE ALL ROWS*/ 

SELECT * 
FROM EMPLOYEES;

/* Retrieve a list of employees ordered by department ID. */

SELECT F_NAME, L_NAME, DEP_ID 
FROM EMPLOYEES
ORDER BY DEP_ID;

/* Retrieve a list of employees ordered in descending order by department
 ID and within each department ordered alphabetically in descending order
 by last name. */

SELECT F_NAME, L_NAME, DEP_ID
FROM EMPLOYEES
ORDER BY DEP_ID DESC, L_NAME DESC; 

/* In SQL problem 2, use department name instead of department ID. Retrieve
 a list of employees ordered by department name, and within each department
 ordered alphabetically in descending order by  last name. */

SELECT D.DEP_NAME, E.F_NAME, E.L_NAME
FROM EMPLOYEES AS E, DEPARTMENTS AS D 
WHERE E.DEP_ID = D.DEPT_ID_DEP
ORDER BY D.DEP_NAME, E.L_NAME DESC;