Ödev 3

Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

country tablosunda bulunan country sütunundaki ülke isimlerinden 'A' karakteri ile başlayıp 'a' karakteri ile sonlananları sıralayınız.
country tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden oluşan ve sonu 'n' karakteri ile sonlananları sıralayınız.
film tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük ya da küçük harf farketmesizin 'T' karakteri içeren film isimlerini sıralayınız.
film tablosunda bulunan tüm sütunlardaki verilerden title 'C' karakteri ile başlayan ve uzunluğu (length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sıralayınız.

SELECT * FROM COUNTRY WHERE COUNTRY LIKE 'A%a';
SELECT * FROM COUNTRY WHERE COUNTRY LIKE '%_____n';
SELECT * FROM FILM WHERE TITLE ILIKE '%T%T%T%T%';
SELECT * FROM FILM WHERE LENGTH>90 AND RENTAL_RATE=2.99 AND TITLE LIKE 'C%';
