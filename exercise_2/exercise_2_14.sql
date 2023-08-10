-- เขียน sql เพื่อลบข้อมูลที่มีชื่อจริงขึ้นต้นด้วยตัว K ทั้งหมดในตาราง actor

DELETE FROM actor WHERE first_name LIKE 'K%';