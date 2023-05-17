---1.How many actors are there with the last name 'Walberg'?
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';
--Answer: 2



---2. How many payments were made between $3.99 and $5.99?
SELECT amount
FROM payment
WHERE amount BETWEEN 3.99 and 5.99;
--Answer: None


---3. What film does the store have the most of? (search in inventory)
SELECT COUNT(DISTINCT film_id)
FROM inventory;




---4. How many customers have the last name ‘William’?
SELECT first_name, last_name
FROM customer
WHERE last_name = 'William';
--Answer: None


---5. What store employee (get the id) sold the most rentals?
SELECT staff_id, COUNT(staff_id)
FROM rental
GROUP BY staff_id;
--Answer: Staff 1


---6. How many different district names are there?
SELECT district
FROM address
GROUP BY district;
--Answer: 378

---7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT MAX(actor_id)
FROM film_actor
GROUP BY film_id;
--Answer: 168

---8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT customer_id, last_name
FROM customer
WHERE last_name LIKE'%es';
--Answer: 21

---9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
SELECT COUNT(amount)
FROM payment
WHERE amount > 4.99 and rental_id > 250
GROUP BY customer_id BETWEEN 380 and 430;
--Answer: 27

---10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?
SELECT COUNT(DISTINCT rating)
FROM film;
--Answer 1: 5 rating categories

SELECT MAX(rating)
FROM film;

--Answer 2: NC- 17