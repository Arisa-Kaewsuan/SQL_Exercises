-- เขียน sql เพื่อ insert ข้อมูลชื่อภาษา Thai และ Lao ใส่ตาราง language ตามลำดับ
-- สำคัญมาก! ทุกคำสั่งต้องจบด้วย semicolon(;)

INSERT INTO language(language_id,name,last_update)
VALUES (7,'Thai',CURRENT_TIMESTAMP),
       (8,'Lao',CURRENT_TIMESTAMP);