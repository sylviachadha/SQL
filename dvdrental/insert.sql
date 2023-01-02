/* Insert Command It allows u to insert rows*/

/*
 INSERT INTO table_name(column1, column2, ...)
 VALUES
   (value1, value2, ...),
   (value1, value2, ...),
*/

SELECT * FROM user_account;   /*initially empty, no data inserted*/

/*user_id will be automatically generated in sequence as SERIAL data type*/
INSERT INTO user_account(username, password, email, created_on)
VALUES
('Jose','password','jose@mail.com',CURRENT_TIMESTAMP);

/*job_id will be automatically generated in sequence 1 and 2, as SERIAL data type*/
INSERT INTO job(job_name)
VALUES
('Astronaut');

INSERT INTO job(job_name)
VALUES
('President');

/* Below query success as user_id=1 & job_id=2 exists in primary tables*/
INSERT INTO account_job(user_id,job_id,hire_date)
VALUES
(1,2,CURRENT_TIMESTAMP);


/*Below code results in error
[23503] ERROR: insert or update on table "account_job" violates foreign key constraint
  "account_job_job_id_fkey" Detail: Key (job_id)=(10) is not present in table "job".
 */
INSERT INTO account_job(user_id,job_id,hire_date)
VALUES
(1,10,CURRENT_TIMESTAMP);
