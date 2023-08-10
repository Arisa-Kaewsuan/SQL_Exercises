-- เขียน sql แสดง title, length และความยาวเฉลี่ยของหนังโดยหาความยาวเฉลี่ยจากเรื่องที่มี film_id 
-- ก่อนหน้า 1 เรื่อง ตัวเอง และหลัง 1 เรื่อง เช่น ค่าเฉลี่ยของข้อมูลในแถว film_id = 2 จะหาได้จาก (ข้อมูลในแถว film_id_1 + 
-- ข้อมูลในแถว film-id-2 + ข้อมูลในแถว film_id_3) / 3

SELECT title, length, AVG(length) OVER (ORDER BY   ROWS BETWEEN AND)
FROM film 