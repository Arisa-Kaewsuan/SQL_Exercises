-- เขียน sql แสดงข้อมูล film's title, language's name ของ film ทั้งหมด โดยแสดงเฉพาะหนังที่มี film_id ตั้งแต่ 1-100

SELECT film.title,language.name 
FROM film 
INNER JOIN language
ON film.language_id = language.language_id
WHERE film.film_id BETWEEN 1 AND 100
