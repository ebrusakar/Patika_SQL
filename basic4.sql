Ödev 4

Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.
film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
city tablosundaki şehir isimlerinin kaçtanesi 'R' veya r karakteri ile biter?

SELECT DISTINCT REPLACEMENT_COST FROM FILM;
SELECT COUNT(DISTINCT REPLACEMENT_COST) FROM FILM;
SELECT COUNT(*) FROM FILM WHERE TITLE LIKE 'T%' AND RATING='G';
SELECT COUNT(*) FROM COUNTRY WHERE COUNTRY LIKE '_____';
SELECT COUNT(*) FROM CITY WHERE CITY ILIKE '%R';
