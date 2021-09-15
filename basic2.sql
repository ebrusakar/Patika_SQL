SELECT * FROM FILM WHERE replacement_cost BETWEEN  12.99 AND 16.99;
SELECT first_name, last_name FROM ACTOR WHERE first_name IN  ('Penelope' , 'Nick' , 'Ed');
SELECT * FROM FILM WHERE replacement_cost IN (12.99, 15.99, 28.99) AND rental_rate IN (0.99, 2.99, 4.99); 