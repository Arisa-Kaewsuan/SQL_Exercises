-- เขียน sql เพื่อ update ข้อมูลต่อไปนี้ให้ครบทุกตารางที่มีความเกี่ยวข้อง
-- UPDATE ข้อมูลของ film_id = 3 เป็นดังนี้
-- 1. title : ONE FOR EVERYTHING
-- 2. description : Test Movie for insert
-- 3. release_year : 2100
-- 4. language : French
-- 5. rental_duration : 5
-- 6. rental_rate : 10.6
-- 7. length : 120
-- 8. replacement_cost : 50.7
-- 9. rating : PG
-- 10. category ; children
-- 11. actor 6 คน คือ  PENELOPE  GUINESS
--                     GRACE  MOSTEL
--                     KARL BERRY
--                     UMA  WOOD
--                     DAN  TORN
--                     KEVIN  BLOOM

UPDATE film_category
SET category_id = 3
WHERE film_id = 3;

DELETE FROM film_actor WHERE film_id = 3;

INSERT INTO film_actor (actor_id, film_id, last_update)
VALUES (1,3,CURRENT_TIMESTAMP),
	   (7,3,CURRENT_TIMESTAMP),
	   (12,3,CURRENT_TIMESTAMP),
	   (13,3,CURRENT_TIMESTAMP),
	   (18,3,CURRENT_TIMESTAMP),
	   (25,3,CURRENT_TIMESTAMP);


UPDATE film
SET title = 'ONE FOR EVERYTHING',
	description = 'Test Movie for update',
	release_year = '2100',
	language_id = 5,
	rental_duration = 5,
	rental_rate = 10.6,
	length = 120,
	replacement_cost = 50.7,
	rating = 'PG'
WHERE film_id = 3;