/* Assessment-1 - database dvdrental */
/*-----------------------------------------*/

/* Q1 - How many payment txn's were greater than 5$ ?*/
SELECT * FROM payment; # To see columns in table

SELECT COUNT(*) FROM payment
WHERE amount > 5;


/* Q2 - How many actors have first name that starts with letter P?*/
SELECT * FROM actor;

SELECT COUNT(first_name) FROM actor
WHERE first_name LIKE 'P%';


/* Q3 - How many unique districts are our customers from?*/
SELECT * FROM  address;

SELECT COUNT(DISTINCT district) FROM address;


/* Q4 -  Retrieve list of names for distinct districts*/
SELECT DISTINCT district FROM address;


/* Q5 - How many films have rating 'R' & replacement cost b/w $5 and $15?*/
SELECT * FROM film;

SELECT COUNT(*) FROM film
WHERE rating='R' AND replacement_cost BETWEEN 5 AND 15;


/* Q6 - How many films have word Truman somewhere in title?*/
SELECT * FROM film;

SELECT COUNT(*) FROM film
WHERE title LIKE '%Truman%';


/* Q7 - Return the customer IDs of customers who have spent at least $110 with
#the staff member who has an ID of 2. */
SELECT * FROM payment;

SELECT customer_id, SUM(amount)
FROM payment
WHERE staff_id=2
GROUP BY customer_id
HAVING SUM(amount) >= 110;


/* Q8 - How many films begin with the letter J?*/
SELECT * FROM film;

SELECT COUNT(*) FROM film
WHERE title LIKE 'J%';


/* Q9 - What customer has the highest customer ID number whose name starts
#with an 'E' and has an address ID lower than 500?*/
SELECT * FROM customer;

SELECT first_name,customer_id FROM customer
WHERE first_name LIKE 'E%' AND address_id < 500
ORDER BY customer_id DESC
LIMIT 1;


/* Q10- What are emails of customers who live in California? */
SELECT * FROM customer;

SELECT email,district FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
WHERE district = 'California';


/* Q11 - Get a list of all movies 'Nick Wahlberg' has been in ? */
SELECT * FROM film;
SELECT * FROM actor;
SELECT * FROM film_actor;

SELECT title,first_name, last_name FROM film
INNER JOIN film_actor
ON film.film_id = film_actor.film_id
INNER JOIN actor
ON actor.actor_id = film_actor.actor_id
WHERE first_name = 'Nick' AND last_name = 'Wahlberg';

/* Assessment-2, database exercises;cd */
/*-------------------------------------------*/

/* Q1 - Retrieve all information from facilities table*/
SELECT * FROM cd.facilities;


/* Q2 - Retrieve a list of only facility names and costs*/
SELECT name, membercost, guestcost
FROM cd.facilities;


/* Q3 - Retrieve a list of facilities that charge a fee to members*/
SELECT DISTINCT name FROM CD.facilities
WHERE membercost != 0;


/* Q4 - How can you produce a list of facilities that charge a fee to members,
#and that fee is less than 1/50th of the monthly maintenance cost? Return the
#facid, facility name, member cost, and monthly maintenance of the facilities
#in question */
SELECT facid, name, membercost, monthlymaintenance
FROM cd.facilities
WHERE membercost > 0 AND membercost < (0.02 * monthlymaintenance);


/* Q5 - How can you produce a list of all facilities with the word 'Tennis'
#in their name? */
SELECT name FROM cd.facilities
WHERE name LIKE '%Tennis%';


/* Q6 - How can you retrieve the details of facilities with ID 1 and 5?
#Try to do it without using the OR operator */
SELECT * FROM CD.facilities
WHERE facid IN (1,5);


/* Q7 - How can you produce a list of members who joined after the start of September 2012?
#Return the memid, surname, firstname, and joindate of the members in question */
SELECT * FROM cd.members;

SELECT memid, firstname, surname, joindate
FROM cd.members
WHERE joindate >= '2012-09-01';


/* Q8 - How can you produce an ordered list of the first 10 surnames in the members table?
#The list must not contain duplicates. */
SELECT * FROM cd.members;

SELECT DISTINCT surname FROM cd.members
ORDER BY surname ASC
LIMIT 10;


/* Q9 - You'd like to get the signup date of your last member. How can you retrieve
#this information? */
SELECT * FROM cd.members;

SELECT memid,joindate FROM cd.members
ORDER BY memid DESC
LIMIT 1;


/* Q10 - Produce a count of the number of facilities that have a cost to
# guests of 10 or more*/
SELECT * FROM CD.facilities;

SELECT COUNT(*) FROM CD.facilities
WHERE guestcost >= 10;


/* Q11 - Produce a list of the total number of slots booked per facility in the
# month of September 2012.Produce an output table consisting of facility id and
# slots, sorted by the number of slots */
SELECT * FROM CD.bookings;

SELECT facid, SUM(slots) AS total_slots
FROM CD.bookings
WHERE starttime BETWEEN '2012-09-01' AND '2012-10-01'
/* upper bound not included, lower bound included*/
GROUP BY facid
ORDER BY SUM(slots) ASC;


/* Q12 - Produce a list of facilities with more than 1000 slots booked.
#Produce an output table consisting of facility id and total slots, sorted by facility id */
SELECT * FROM cd.bookings;

SELECT facid, SUM(slots) AS total_slots
FROM cd.bookings
GROUP BY facid
HAVING SUM(slots) > 1000
ORDER BY facid ASC;


/* Q13 - How can you produce a list of the start times for bookings for tennis courts,
#for the date '2012-09-21'? Return a list of start time and facility name pairings,
#ordered by the time. */
SELECT * FROM cd.bookings;
SELECT * FROM cd.facilities;

SELECT starttime, name FROM cd.bookings
INNER JOIN cd.facilities
ON bookings.facid = facilities.facid
WHERE name LIKE 'Tennis%' AND starttime BETWEEN '2012-09-21' AND '2012-09-22'
/* upper bound not included, lower bound included*/
/* Hence even for single date, you use between*/
ORDER BY starttime ASC;


/* Q14 - How can you produce a list of the start times for bookings by members
# named 'David Farrell'? */
SELECT * FROM cd.members;
SELECT * FROM cd.bookings;

SELECT starttime FROM cd.bookings
INNER JOIN cd.members
ON bookings.memid = members.memid
WHERE firstname = 'David' AND surname = 'Farrell';

/* Assessment-3, database exercises;cd */
/*-------------------------------------------*/

/* Task1
#Create a new database called "School" this database should have two tables:
#teachers and students
#The students table should have columns for student_id, first_name,last_name,
#homeroom_number,phone,email, and graduation year.
#The teachers table should have columns for teacher_id, first_name, last_name,
# homeroom_number,department, email, and phone.*/

CREATE DATABASE School1;

CREATE TABLE students1(
    student_id SERIAL PRIMARY KEY ,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30),
    homeroom_number INTEGER,
    phone VARCHAR(15) NOT NULL,
    email  VARCHAR(35),
    graduation_year INTEGER
);


CREATE TABLE teacher1(
    teacher_id SERIAL PRIMARY KEY ,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30),
    homeroom_number INTEGER,
    phone VARCHAR(15) NOT NULL,
    email  VARCHAR(35),
    department VARCHAR(20)
);

SELECT * FROM students1;
SELECT * FROM teacher1;

/* Task2
#Once you've made the tables, insert a student named Mark Watney (student_id=1) who has a
#phone number of 777-555-1234 and doesn't have an email. He graduates in 2035 and has 5
#as a homeroom number.
#Then insert a teacher names Jonas Salk (teacher_id = 1) who as a homeroom number of 5
#and is from the Biology department. His contact info is: jsalk@school.org and a phone
#number of 777-555-4321.
# */

INSERT INTO students1(first_name, last_name, homeroom_number, phone, graduation_year)
VALUES ('Mark','Watney',5,'777-555-1234',2035);

SELECT * FROM students1;

INSERT INTO teacher1(first_name, last_name, homeroom_number, phone, email, department)
VALUES('Jonas','Sulk',5,'777-555-4321','jsalk@school.org','Biology');

SELECT * FROM teacher1;


