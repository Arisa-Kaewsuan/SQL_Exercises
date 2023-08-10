-- เขียน sql แสดง category's name ของ film และจำนวนหนังในแต่ละหมวดหมู่ 
-- โดยแสดงเฉพาะข้อมูลที่มีจำนวนไม่เกิน 60 เรื่อง
-- โดยเรียงข้อมูลตามจำนวนหนังจากน้อยไปมาก
-- ในกรณีที่หมวดหมู่มีจำนวนหนังเท่ากันให้เรียงตามชื่อหมวดจากมากไปน้อย

SELECT category.name, COUNT(film.title)
FROM film
INNER JOIN film_category
ON film.film_id = film_category.film_id
INNER JOIN category
ON film_category.category_id = category.category_id
GROUP BY category.name
HAVING COUNT(film.title) <= 60
ORDER BY COUNT(film.title) ASC , category.name DESC
