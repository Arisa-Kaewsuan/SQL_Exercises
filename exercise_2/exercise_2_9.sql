-- เขียน sql เพื่อ update ตาราง actor โดยแก้ข้อมูลที่ชื่อจริงขึ้นต้นด้วยตัว K ทั้งหมด ให้เป็นชื่อ KRISTA

UPDATE actor
SET first_name = 'KRISTA'
WHERE first_name LIKE 'K%';