-- เขียนคำสั่ง sql เพื่อหาจำนวนหนังทั้งหมดที่มี rating เป็น PG-13 จากตาราง film

SELECT COUNT(film_id) FROM film WHERE rating = 'PG-13'