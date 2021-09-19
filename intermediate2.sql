Ödev 9

Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

1.city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
2.customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
3.customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

SELECT a.city, b.country, a.country_id, b.country_id FROM city a
INNER JOIN country b ON a.country_id = b.country_id;

SELECT b.payment_id, a.first_name, a.last_name FROM customer a
INNER JOIN payment b ON a.customer_id = b.customer_id;

SELECT b.rental_id, a.first_name, a.last_name FROM customer a
INNER JOIN rental b ON a.customer_id = b.customer_id;
