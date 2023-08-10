-- เขียนคำสั่ง sql เพื่อแสดง film'title. category's name ของ film ทั้งหมด
-- โดยแสดงผลลัพธ์เรียงตาม film_id จากน้อยไปมาก

SELECT film.title,category.name 
FROM film
INNER JOIN film_category
ON film.film_id = film_category.film_id
INNER JOIN category
ON film_category.category_id = category.category_id
ORDER BY film.film_id ASC