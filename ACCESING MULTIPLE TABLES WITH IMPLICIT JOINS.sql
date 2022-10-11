/* Retrieve all data */
SELECT * FROM EMPLOYEES;

SELECT * FROM JOBS;

/* Perform an implicit cartesian/cross join between EMPLOYEES and JOBS 
tables. */

SELECT *
FROM EMPLOYEES, JOBS;

/* Retrieve only the EMPLOYEES records that correspond to jobs in the 
JOBS table. */

SELECT * 
FROM EMPLOYEES, JOBS
WHERE EMPLOYEES.JOB_ID = JOBS.JOB_IDENT;

/* Redo the previous query, using shorter aliases for table names.*/

SELECT * 
FROM EMPLOYEES E, JOBS J
WHERE E.JOB_ID = J.JOB_IDENT;

/* Redo the previous query, but retrieve only the Employee ID, 
Employee Name and Job Title. */

SELECT EMP_ID, F_NAME, L_NAME, JOB_TITLE
FROM EMPLOYEES E, JOBS J
WHERE E.JOB_ID = J.JOB_IDENT;

/* Redo the previous query, but specify the fully qualified column names 
with aliases in the SELECT clause. */

SELECT E.EMP_ID, E.F_NAME, E.L_NAME, J.JOB_TITLE
FROM EMPLOYEES E, JOBS J
WHERE E.JOB_ID = J.JOB_IDENT;
