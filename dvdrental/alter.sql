/* Alter Syntax
ALTER TABLE table_name action
Documentation - https://www.postgresql.org/docs/15/sql-altertable.html

actions can be as below-
   1. Adding
   2. Dropping
   3. Renaming
   4. Changing column data type
   5. Set DEFAULT values for columns
   6. Add CHECK constraints
   7. Rename table
 */


CREATE TABLE information(
    info_id SERIAL PRIMARY KEY,
     title VARCHAR(500) NOT NULL,
     person VARCHAR(50) NOT NULL UNIQUE
);

SELECT * FROM new_info;


/* rename table using alter*/
ALTER TABLE information
RENAME TO new_info;


/*rename column using alter*/
ALTER TABLE new_info
RENAME COLUMN person TO people;


/* currently there is not null constraint on person*/

ALTER TABLE new_info
ALTER COLUMN people DROP NOT NULL ;

/* now since constraint is removed u can have a null value in people*/
INSERT INTO  new_info(title)
VALUES
 ('some new title');

