/* Retrieve all data */
SELECT * FROM PETRESCUE;

/* Enter a function that calculates the total cost of all animal rescues in 
the PETRESCUE table. */

SELECT SUM(COST) 
FROM PETRESCUE;

/* Enter a function that displays the total cost of all animal rescues in 
the PETRESCUE table in a column called SUM_OF_COST*/

SELECT SUM(COST) AS SUM_OF_COST
FROM PETRESCUE;

/* Enter a function that displays the maximum quantity of animals rescued.*/

SELECT MAX(QUANTITY)
FROM PETRESCUE;

/* Enter a function that displays the average cost of animals rescued. */

SELECT AVG(COST)
FROM PETRESCUE;

/* Enter a function that displays the average cost of rescuing a dog. */

SELECT AVG(COST/QUANTITY)
FROM PETRESCUE
WHERE ANIMAL = 'Dog';