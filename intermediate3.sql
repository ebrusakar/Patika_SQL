SELECT a.city, b.country, a.country_id, b.country_id FROM city a
LEFT JOIN country b ON a.country_id = b.country_id;

SELECT a.first_name,  a.last_name, b.payment_id FROM customer a
RIGHT JOIN payment b ON a.customer_id = b.customer_id;

SELECT a.first_name,  a.last_name, b.rental_id FROM customer a
FULL JOIN rental b ON a.customer_id = b.customer_id;
