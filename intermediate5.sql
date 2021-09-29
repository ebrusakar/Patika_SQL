Ödev 12

Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

1.film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
2.film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
3.film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
4.payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

SELECT COUNT (*) AS COUNT
FROM FILM
WHERE LENGTH >
		(SELECT AVG(LENGTH)
			FROM FILM);


SELECT COUNT (*) AS COUNT
FROM FILM
WHERE RENTAL_RATE =
		(SELECT MAX(RENTAL_RATE)
			FROM FILM);


SELECT TITLE,
	RENTAL_RATE,
	REPLACEMENT_COST
FROM FILM
WHERE (RENTAL_RATE =
								(SELECT MIN(RENTAL_RATE)
									FROM FILM)
							AND REPLACEMENT_COST =
								(SELECT MIN(REPLACEMENT_COST)
									FROM FILM));


SELECT CUSTOMER_ID,
	MAX(CUSTOMER_ID_COUNT)
FROM
	(SELECT CUSTOMER_ID,
			COUNT(CUSTOMER_ID) AS CUSTOMER_ID_COUNT
		FROM PAYMENT
		GROUP BY CUSTOMER_ID
		ORDER BY CUSTOMER_ID_COUNT DESC) AS D
GROUP BY D.CUSTOMER_ID
ORDER BY MAX DESC
LIMIT 5;
