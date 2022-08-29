/* Extract information from time based data type using EXTRACT() and AGE() */
/* https://www.postgresql.org/docs/current/functions-formatting.html *- Datetime template patterns*/

SELECT * FROM payment;

SELECT EXTRACT(YEAR FROM payment_date)
FROM payment;

SELECT EXTRACT(YEAR FROM payment_date) AS year
FROM payment;

SELECT EXTRACT(MONTH FROM payment_date) AS month
FROM payment;

SELECT EXTRACT(QUARTER FROM payment_date) AS quarter
FROM payment;

SELECT EXTRACT(WEEK FROM payment_date) AS quarter
FROM payment;

SELECT AGE(payment_date)
FROM payment;

/* TO_CHAR function*/
SELECT TO_CHAR(payment_date, 'MONTH-YYYY')
FROM payment;

SELECT TO_CHAR(payment_date, 'mon/dd/YYYY')
from payment;

SELECT TO_CHAR(payment_date, 'MM/dd/YYYY')
from payment;

SELECT TO_CHAR(payment_date, 'mon-dd-YYYY')
from payment;

SELECT TO_CHAR(payment_date, 'DD-MM-YYYY')
from payment;

/* Ques - During which months did payments occur?*/

SELECT DISTINCT TO_CHAR(payment_date, 'MONTH')
FROM payment;

/* Ques - How many payments occured on a Monday?*/

SELECT COUNT(*) FROM payment               /* dow is day of week*/
WHERE EXTRACT(dow FROM payment_date) = 1;  /* 0 is Sunday so 1 is Monday*/





