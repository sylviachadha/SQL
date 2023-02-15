/*VIEWS*/

/* Often there r specific combinations of tables and
conditions that r used quite often for a project.
Instead of performing same query again & again as a
starting point, can create a view, it will allow u
to quickly view a query which is a simple call as if
it were a table that already existed */

/*1. A view is database object that is a stored query.
  2. A view can be accessed as a virtual table
  3. A view does not store data physically, it just
  stores the query.
  4. A complex query if u want to use it again & again
  just call it as it were some table
  SELECT * FROM view_name
*/


SELECT * FROM customer;
SELECT * FROM address;

/* Both have address id in common, we join by address_id */

SELECT first_name, last_name, address.address FROM customer
INNER JOIN address
ON customer.address_id = address.address_id;

/* This query we store as a view named customer_info*/

CREATE VIEW customer_info AS
SELECT first_name, last_name, address.address FROM customer
INNER JOIN address
ON customer.address_id = address.address_id;

/* customer_info view can just be called as a table*/
SELECT * FROM customer_info;

/* To edit view - also need to add district in customer view */

CREATE OR REPLACE VIEW customer_info AS
SELECT first_name, last_name, address.address,district FROM customer
INNER JOIN address
ON customer.address_id = address.address_id;


SELECT * FROM customer_info;


/* To change the name of a view */
ALTER VIEW customer_info RENAME TO cus_info;

SELECT * FROM cus_info;

/* To delete a view*/
DROP VIEW IF EXISTS cus_info;
