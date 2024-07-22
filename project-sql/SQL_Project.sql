-- ANSWERING STAKEHOLDER QUESTIONS/INQUIRIES

-- They need separate counts of inventory items held at each of the 2 stores
/* First, we have to take a look at the different tables to decide which one we will be using, 
and then we use the COUNT function and an ALIAS */
SELECT 
	store_id,
    COUNT(inventory_id) AS total_items
FROM inventory
GROUP BY store_id;

-- They need a count of active customers for each of the stores
/* For this question, we can either make use of the COUNT/CASE or just do a simple
COUNT using WHERE active = 1 */
SELECT
    store_id,
    COUNT(CASE WHEN active = 1 THEN store_id ELSE NULL END) AS active_customers
FROM customer
GROUP BY store_id;

-- Pull a list of all film titles along with their lengths and rental rates, and sort them from longest to shortest
SELECT
	title,
	length,
    rental_rate
FROM film
ORDER BY length DESC;

-- Provide the replacement cost for the film that is least/most/avg expensive to replace of all films you carry
/* For this query, we are making use of some of the most common Aggregate Functions*/
SELECT
    MIN(replacement_cost) AS least_expensive_to_replace,
	MAX(replacement_cost) AS most_expensive_to_replace,
    AVG(replacement_cost) AS avg_cost_to_replace
FROM film;


-- Provide a list of all customer id values, with a count of rentals they have made all-time, with the highest volume customers at the top

SELECT 
	customer_id,
    COUNT(rental_id) AS number_of_rentals
FROM rental
GROUP BY
	customer_id
ORDER BY
	number_of_rentals DESC;

-- Send over the manager's names at each store, with the full adress of each property (st address,district, city, country)
SELECT 
	staff.first_name AS manager_first_name,
    staff.last_name AS manager_last_name,
    address.address,
    address.district,
	city.city,
    country.country
    
FROM store
	LEFT JOIN staff ON store.manager_staff_id = staff.staff_id
    LEFT JOIN address ON store.address_id = address.address_id
    LEFT JOIN city ON address.city_id = city.city_id
    LEFT JOIN country ON city.country_id = country.country_id;


/* Pull together a list of each inventory item you have stocked, including the store_id number, the inventory_id, the name of the film
	the film's rating,, rental rate and replacement cost*/
-- Film ID is a foreign key in the inventory table and it's the primary key in the film table.
SELECT 
	inventory.store_id,
    inventory.inventory_id,
    film.title,
    film.rating,
    film.rental_rate,
    film.replacement_cost
    
FROM inventory
	LEFT JOIN film
		ON inventory.film_id = film.film_id;


/* Pull together a list of customer names, their total lifetime rentals, and the sum of all payments you have collected from them.
	It would be great to see this ordered on total lifetime value, with the most valuable customers at the top of the list. */
SELECT
	customer.first_name,
    customer.last_name,
    COUNT(rental.rental_id) AS total_rentals,
    SUM(payment.amount) AS total_payment_amount
    
FROM customer
	LEFT JOIN rental ON customer.customer_id = rental.customer_id
    LEFT JOIN payment ON rental.rental_id = payment.rental_id
    
GROUP BY 
	customer.first_name,
    customer.last_name
    
ORDER BY
	total_payment_amount DESC;

