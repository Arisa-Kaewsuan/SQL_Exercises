-- เขียนคำสั่ง sql แสดง category's name ของ film และจำนวนหนังในแต่ละหมวดหมู่
-- โดยแสดงเฉพาะข้อมูลที่มีจำนวนหนังไม่เกิน 60 เรื่อง

SELECT category.name, COUNT(film.title)
FROM film
INNER JOIN film_category
ON film.film_id = film_category.film_id
INNER JOIN category
ON film_category.category_id = category.category_id
GROUP BY category.name
HAVING COUNT(film.title) <= 60;
