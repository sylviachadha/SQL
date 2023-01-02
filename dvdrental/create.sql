/* Create Command Syntax */

/* CREATE TABLE table_name(
   column_name TYPE column_constraint,
   column_name TYPE column_constraint,
   );
 */

CREATE TABLE user_account(
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(50) NOT NULL,
    email VARCHAR(250) UNIQUE NOT NULL,
    created_on TIMESTAMP NOT NULL,
    last_login TIMESTAMP
);


CREATE TABLE job(
    job_id SERIAL PRIMARY KEY,
    job_name VARCHAR(200) UNIQUE NOT NULL
);


CREATE TABLE account_job(
 /*Here  user_id &  job_id are foreign keys*/
    user_id INTEGER REFERENCES user_account(user_id),
    job_id INTEGER REFERENCES job(job_id),
    hire_date TIMESTAMP
);