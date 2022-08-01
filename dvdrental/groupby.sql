/*
1. Groupby to aggregate data, to understand how data is distributed per category.
2. Aggregate column, (on which aggregate function like SUM,MAX,MIN,AVR,COUNT
will be applied) based on some categorical column.
3. Something treated as categorical may not always be non-numerical e.g. 5
types of rental rates
4. Groupby directly after 'FROM' or 'WHERE' statement
5. We can groupby on multiple columns
6. WHERE statement should not refer to the aggregation results.
7. If need to filter on aggregated column can be done using HAVING
instead of WHERE
8. Grooupby can be read as 'per'
9. Syntax-
SELECT category_col, AGG(col_name)
FROM table
GROUP BY category_col*/

SELECT * FROM payment;

/* If GROUPBY used without aggregation, it is simply like
finding distinct values in a column using DISTINCT*/
SELECT customer_id FROM payment
GROUP BY customer_id
ORDER BY customer_id;


/*Groupby useful with aggregation*/
/*Find Customer spending max. amount*/
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;


/*Number of txn's per customer*/
SELECT customer_id, COUNT(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;


/*Groupby on multiple columns*/
/*Groupby order matters, the actual select statement
order does not matter*/
SELECT staff_id, customer_id, SUM(amount)
FROM payment
GROUP BY staff_id, customer_id
ORDER BY staff_id, customer_id;


/* DATE to extract from timestamped payment_date column*/
SELECT DATE(payment_date) FROM payment;

SELECT DATE(payment_date), SUM(amount)
FROM payment
GROUP BY DATE(payment_date)
ORDER BY SUM(amount) DESC;


/* Staff who did most transactions*/
SELECT staff_id, COUNT(*)
FROM payment
GROUP BY staff_id;


/* Avg replacement cost per rating*/
SELECT rating, ROUND(AVG(replacement_cost),2)
FROM film
GROUP BY rating;


/*Top 5 customers based on total spend*/

SELECT customer_id,SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;


