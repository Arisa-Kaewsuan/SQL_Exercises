-- เขียน sql แสดง title และจำนวน actor รวมของหนังแต่ละเรื่อง
-- โดยแสดงข้อมูลเรียงตาม film_id จากน้อยไปมาก

SELECT film.title, COUNT(film_actor.actor_id)
FROM film
INNER JOIN film_actor
ON film.film_id = film_actor.film_id
GROUP BY film.title
ORDER BY film.film_id DESC