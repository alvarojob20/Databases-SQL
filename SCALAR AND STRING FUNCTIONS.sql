/* Retrieve all data */
SELECT * FROM PETRESCUE;

/* Enter a function that displays the rounded cost of each rescue. */

SELECT ID, ANIMAL, ROUND(COST)
FROM PETRESCUE;

/* Enter a function that displays the length of each animal name */

SELECT DISTINCT(ANIMAL), LENGTH(ANIMAL)
FROM PETRESCUE;

/* Enter a function that displays the animal name in each rescue in 
uppercase. */

SELECT ID, UCASE(ANIMAL) AS U_ANIMAL, QUANTITY, COST, RESCUEDATE
FROM PETRESCUE;

/* Enter a function that displays the animal name in each rescue in 
uppercase without duplications. */

SELECT DISTINCT(UCASE(ANIMAL))
FROM PETRESCUE;

/* Enter a query that displays all the columns from the PETRESCUE table, 
where the animal(s) rescued are cats. Use cat in lower case in the query*/

SELECT ID, LCASE(ANIMAL) AS L_ANIMAL, QUANTITY, COST, RESCUEDATE
FROM PETRESCUE
WHERE ANIMAL = 'Cat';

/* Option 2 */
SELECT * 
FROM PETRESCUE
WHERE LCASE(ANIMAL) = 'cat';
