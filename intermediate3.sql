Ödev 10

Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

1.city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.
2.customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.
3.customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.

SELECT a.city, b.country, a.country_id, b.country_id FROM city a
LEFT JOIN country b ON a.country_id = b.country_id;

SELECT a.first_name,  a.last_name, b.payment_id FROM customer a
RIGHT JOIN payment b ON a.customer_id = b.customer_id;

SELECT a.first_name,  a.last_name, b.rental_id FROM customer a
FULL JOIN rental b ON a.customer_id = b.customer_id;
