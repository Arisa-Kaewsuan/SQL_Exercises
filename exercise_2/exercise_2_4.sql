-- เขียน sql เพื่อ insert ข้อมูลนักแสดงชื่อนามสกุล KATE MADISON และ KRISTTA MASTRANO ใส่ตาราง actor ตามลำดับ

INSERT INTO actor(actor_id,first_name,last_name,last_update)
VALUES(201,'KATE','MADISON',CURRENT_TIMESTAMP),
      (202,'KRISTA','MASTRANO',CURRENT_TIMESTAMP);