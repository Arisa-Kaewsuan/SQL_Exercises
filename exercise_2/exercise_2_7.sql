-- เขียน sql เพื่อ update ตาราง language โดยแก้ข้อมูลที่มี language_id > 2 เป็นภาษา Thai

UPDATE language
SET name = 'Thai'
WHERE language_id > 2;