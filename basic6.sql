SELECT AVG(rental_rate) 
FROM film;

SELECT COUNT(*) FROM film
WHERE TITLE LIKE 'C%';

SELECT MAX(length) 
FROM film WHERE rental_rate=0.99;

SELECT COUNT(DISTINCT replacement_cost) 
FROM film WHERE LENGTH>150;