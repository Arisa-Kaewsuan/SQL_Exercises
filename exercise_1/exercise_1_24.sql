-- เขียนคำสั่ง sql เพื่อแสดงข้อมูล film's title ที่่ actor ที่มี actor's first_name ขึ้นต้นด้วยตัว S แสดงทั้งหมด
-- โดยแสดงผลลัพธ์เรียงตาม actor_id จากน้อยไปมาก ถ้าเป็นนักแสดงคนเดียวกันให้เรียงจาก film_id จากน้อยไปมาก

SELECT film.title 
FROM film 
INNER JOIN film_actor
ON film.film_id = film_actor.film_id
INNER JOIN actor
ON  film_actor.actor_id = actor.actor_id
WHERE actor.first_name LIKE 'S%'
ORDER BY actor.actor_id ASC