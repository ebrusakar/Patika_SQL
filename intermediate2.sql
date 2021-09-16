SELECT a.city, b.country, a.country_id, b.country_id FROM city a
INNER JOIN country b ON a.country_id = b.country_id;

SELECT b.payment_id, a.first_name, a.last_name FROM customer a
INNER JOIN payment b ON a.customer_id = b.customer_id;

SELECT b.rental_id, a.first_name, a.last_name FROM customer a
INNER JOIN rental b ON a.customer_id = b.customer_id;