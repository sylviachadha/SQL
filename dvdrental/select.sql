/*
1. SQL is a query processing language, not a programming language
2. SELECT Statement: To retrieve information from a table
3. Syntax: SELECT column_name FROM table_name
4. SQl will read this as starting from table name & then move to column name
5. Preferred capital letters for SQL keywords
6. ; to mark end of query
*/

SELECT * FROM actor;

SELECT first_name FROM actor;

SELECT first_name, last_name FROM actor;

SELECT * FROM city;

/*Q1- To send out promotional email to existing customers*/

SELECT first_name, last_name, email FROM customer;


