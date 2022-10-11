/* Retrieve all data */
SELECT * FROM PETRESCUE;

/* Enter a function that displays the day of the month when cats have been 
rescued. */

SELECT RESCUEDATE, DAY(RESCUEDATE)
FROM PETRESCUE
WHERE ANIMAL = 'Cat';

/* Enter a function that displays the number of rescues on the 5th month. */

SELECT SUM(QUANTITY) 
FROM PETRESCUE
WHERE MONTH(RESCUEDATE) = 5;

/* Enter a function that displays the number of rescues on the 14th day of 
the month.*/

SELECT SUM(QUANTITY)
FROM PETRESCUE
WHERE DAY(RESCUEDATE) = 14;

/* Animals rescued should see the vet within three days of arrivals. Enter
 a function that displays the third day from each rescue. */

SELECT RESCUEDATE, (RESCUEDATE + 3 DAYS)
FROM PETRESCUE;

/* Enter a function that displays the length of time the animals have been
rescued; the difference between today’s date and the rescue date. */

SELECT RESCUEDATE,(CURRENT_DATE - RESCUEDATE)
FROM PETRESCUE;
