
Ödev 1

Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

film tablosunda bulunan title ve description sütunlarındaki verileri sıralayınız.
film tablosunda bulunan tüm sütunlardaki verileri film uzunluğu (length) 60 dan büyük VE 75 ten küçük olma koşullarıyla sıralayınız.
film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99 VE replacement_cost 12.99 VEYA 28.99 olma koşullarıyla sıralayınız.
customer tablosunda bulunan first_name sütunundaki değeri 'Mary' olan müşterinin last_name sütunundaki değeri nedir?
film tablosundaki uzunluğu(length) 50 ten büyük OLMAYIP aynı zamanda rental_rate değeri 2.99 veya 4.99 OLMAYAN verileri sıralayınız.


SELECT TITLE, DESCRIPTION
FROM FILM;


SELECT * FROM FILM
WHERE LENGTH > 60 AND LENGTH < 75;


SELECT *FROM FILM
WHERE RENTAL_RATE = 0.99
	AND REPLACEMENT_COST = 12.99
	OR REPLACEMENT_COST = 28.99;


SELECT FIRST_NAME,LAST_NAME FROM CUSTOMER
WHERE FIRST_NAME = 'Mary'; --Smith

SELECT * FROM FILM
WHERE NOT(LENGTH > 50) AND NOT (RENTAL_RATE = 2.99 OR RENTAL_RATE = 4.99);
