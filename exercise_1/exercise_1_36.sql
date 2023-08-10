-- เขียน sql เพื่อแสดงข้อมูลชื่อหนัง(title) และ จำนวนนักแสดง(actor) รวมของหนังแต่ละเรื่องที่มี film_id ไม่เกิน 50 
-- โดยใช้ Window Functions

SELECT title, COUNT(actor_id) OVER (PARTITION BY AS num_actor)
FROM film_actor
LEFT JOIN 
WHERE 

