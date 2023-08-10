-- เขียนคำสั่ง SQL แสดงข้อมูลจากตาราง address โดยแสดงข้อมูลทั้งหมดของที่อยู่ที่ address ไม่มีคำว่า Parkway
SELECT * FROM address WHERE address NOT LIKE '%Parkway%'