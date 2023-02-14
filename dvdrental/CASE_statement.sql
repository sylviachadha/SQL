/*CASE*/

/*1. Execute sql code only when certain conditions met
  2. Similar to if/else
  3. General CASE or a CASE expression - 2 ways to use case*/

/* Syntax for CASE
   CASE
        WHEN condition1 THEN result1
        WHEN condition2 THEN result2
        ELSE some_other_condition
   END
 */

/*CASE expression first evaluates an expression, then
compares result with each value in WHEN clauses sequentially*/

/* Syntax for CASE Expression
CASE expression
   WHEN value1 THEN result1
   WHEN value2 THEN result2
   ELSE some_other_result
END
 */

/* CASE is more flexible than CASE expression as
CASE allows for all conditional checks while
CASE expression only allows for equality */

/*CASE*/
SELECT customer_id,
CASE
    WHEN (customer_id <= 100) THEN 'Premium'
    WHEN (customer_id BETWEEN 100 AND 200) THEN 'Plus'
    ELSE 'Normal'
END AS customer_class /*name of column added-customer class*/
FROM customer;


/*CASE EXPRESSION*/
SELECT customer_id,
CASE customer_id
    WHEN 2 THEN 'Winner'
    WHEN 5 THEN 'Second Place'
    ELSE 'Normal'
END AS raffle_results
FROM customer;


/*CASE EXPRESSION*/
SELECT rental_rate,
CASE rental_rate
    WHEN 0.99 THEN 1
    ELSE 0
END
FROM film;


/* Number of 0.99,2.99,4.99 rental films*/
SELECT
SUM(CASE rental_rate
    WHEN 0.99 THEN 1
    ELSE 0
END) AS bargains,
SUM(CASE rental_rate
    WHEN 2.99 THEN 1
    ELSE 0
END) AS regular,
SUM(CASE rental_rate
    WHEN 4.99 THEN 1
    ELSE 0
END) AS premium
FROM film;


/* Using CASE for r,pg,pg13 ratings*/

SELECT rating,
CASE rating
    WHEN 'R' THEN 'Rating-R'
    WHEN 'PG' THEN 'Rating-PG'
    WHEN 'PG-13' THEN 'Rating-PG-13'
    ELSE 'Other'
END AS ratings
FROM film;


/* Number of r,pg,pg13 ratings*/

SELECT
SUM(CASE rating
    WHEN 'R' THEN 1 ELSE 0
END) AS r,
SUM(CASE rating
    WHEN 'PG' THEN 1 ELSE 0
END) AS pg,
SUM(CASE rating
    WHEN 'PG-13' THEN 1 ELSE 0
END) AS pg13
FROM film;

