-- เขียน sql เพื่อ update ตาราง actor โดยแก้ข้อมูลที่มี actor_id = 2 เป้นชื่อ KATE นามสกุล MADISON

UPDATE actor
SET first_name = 'KATE', last_name = 'MADISON'
WHERE actor_id = 2;