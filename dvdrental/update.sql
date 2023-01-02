/* Update Syntax */

/* UPDATE table_name
   SET column1 = value1,
       column2 = value2,
   WHERE
    condition;
 */

/* There r 3 tables - user_account, job and account_job*/

SELECT * FROM user_account; /*Currently last_login is null*/

UPDATE user_account
SET last_login = CURRENT_TIMESTAMP;

/* Can also update using other column value from same table*/
UPDATE user_account
SET last_login =  created_on;


/* Can also update using other column value from other table
Update using two tables*/

SELECT * FROM account_job;
/* Update hire_date in this table based on another table*/

UPDATE account_job
SET hire_date = user_account.created_on
FROM user_account
WHERE account_job.user_id = user_account.user_id;
/* This is like update join although not using join keyword*/


/*Use of Returning keyword*/
UPDATE user_account
SET last_login = CURRENT_TIMESTAMP
RETURNING email, created_on, last_login;


