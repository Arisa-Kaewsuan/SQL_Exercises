-- เขียน sql เพื่อแสดงข้อมูลจากตาราง customer โดยแสดงข้อมุลทั้งหมดของลุกค้าที่ first_name มีตัวอักษรตัวรองสุดท้ายเป็น E
-- โดยเรียงลำดับตาม store_id จากน้อยไปมาก สำหรับข้อมูลที่ store_id มีค่าเท่ากันให้เรียงตาม customer_id จากน้อยไปมาก
SELECT * FROM customer WHERE first_name LIKE '%E_' ORDER BY store_id ASC 
