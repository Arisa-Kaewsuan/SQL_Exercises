-- เขียน sql เพื่อ insert ข้อมูลต่อไปนี้ไว้ท้ายตาราง film รวมทั้งใส่ข้อมูลในตารางอื่นให้ครบทุกตารางที่มีความเกี่ยวข้องด้วย
-- 1. film title : ONE FOR EVERYTHING
-- 2. description : Test Movie for insert
-- 3. release_year : 2100
-- 4. language : Thai
-- 5. rental_duration : 5
-- 6. rental_rate : 10.6
-- 7. length : 120
-- 8. replacement_cost : 50.7
-- 9. rating : PG
-- 10. category ; children
-- 11. actor 6 คน คือ  KATE  MADISON
--                     KRISTA  MASTRANO
--                     MOLLY  KEOGH
--                     JACK  BATES
--                     WILL  PATRICK
--                     MAX  DAVIS

INSERT INTO language(language_id, name, last_update)
VALUES(7,'Thai',CURRENT_TIMESTAMP);

INSERT INTO actor(actor_id, first_name, last_name, last_update)
VALUES(201, 'KATE', 'MADISON', CURRENT_TIMESTAMP),
      (202, 'KRISTA', 'MASTRANO', CURRENT_TIMESTAMP),
	  (203, 'MOLLY', 'KEOGH', CURRENT_TIMESTAMP),
	  (204, 'JACK', 'BATES', CURRENT_TIMESTAMP),
	  (205, 'WILL', 'PATRICK', CURRENT_TIMESTAMP),
	  (206, 'MAX', 'DAVIS', CURRENT_TIMESTAMP);

INSERT INTO film(film_id, title, description, release_year, language_id, original_language_id, rental_duration, rental_rate, length, replacement_cost, rating, special_features, last_update)
VALUES(1001, 'ONE FOR EVERYTHING' , 'Test Movie for insert' , '2100', 7, NULL, 5, 10.6, 120, 50.7, 'PG', NULL, CURRENT_TIMESTAMP);

INSERT INTO film_actor(actor_id, film_id, last_update)
VALUES(201, 1001, CURRENT_TIMESTAMP),
	  (202, 1001, CURRENT_TIMESTAMP),
	  (203, 1001, CURRENT_TIMESTAMP),
	  (204, 1001, CURRENT_TIMESTAMP),
	  (205, 1001, CURRENT_TIMESTAMP),
	  (206, 1001, CURRENT_TIMESTAMP);

INSERT INTO category(category_id, name, last_update)
VALUES(17, 'Children', CURRENT_TIMESTAMP);

INSERT INTO film_category(film_id, category_id, last_update)
VALUES(1001, 17, CURRENT_TIMESTAMP);