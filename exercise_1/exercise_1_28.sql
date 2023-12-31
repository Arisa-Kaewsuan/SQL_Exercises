-- เขียน sql แสดง category's name ของ film และจำนวนหนังในแต่ละหมวดหมู่
-- โดยเรียงข้อมูลตามจำนวนหนังจากมากไปน้อย

SELECT category.name, COUNT(film.title) 
FROM film
INNER JOIN film_category
ON film.film_id = film_category.film_id
INNER JOIN category
ON film_category.category_id = category.category_id
GROUP BY category.name
ORDER BY COUNT(film.title) DESC

