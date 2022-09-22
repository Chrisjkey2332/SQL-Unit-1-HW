-- Question 1. How many actors with the last name Wahlberg
select Count(last_name) 
from actor
where last_name = 'Wahlberg';

-- Question 2. How many payments were made between $3.99 and $5.99?
select count(amount)
from payment
where amount between 3.99 and 5.99;

-- Question 3. What film does the store have the most of? Search in inventory
select film_id, count(film_id) as film_id_number  
from inventory
group by film_id
having count(film_id) > 8;

-- Question 4. How many customers have the last name 'William'
select count(last_name)
from customer
where last_name = 'William';

-- Question 5.  What store employee (get the id) sold the most rentals
select staff_id, count(staff_id) as staff_id_number
from rental
group by staff_id
having count(staff_id) > 8010;

-- Question 6.  How many different district names are there?
select count(distinct district)
from address;

-- Question 7. What film has the most actors in it? (Use film_actor table and get film_id)
select film_id, count(actor_id) 
from film_actor
group by film_id
having count(actor_id) > 15;

-- Question 8. From store_id 1, howe many customers have a last name ending with 'es' (Use customer table)
select count(last_name)
from customer
where last_name like '%es';

-- Question 9. How many payment amounts had a number of rentals above 250 for customers with ids between 380 and 430
select count(distinct payment_id), amount 
from payment
where customer_id between 380 and 430
group by amount 
having count(amount) > 250;

select *
from payment;
-- Question 10. Within the film table, how many categories are there? What rating has the most movies total?
select count(distinct rating)
from film;
select rating, count(rating) as rating_occurence
from film
group by rating
having count(rating) > 210;

