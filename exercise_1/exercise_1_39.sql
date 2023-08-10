-- เขียน sql เพื่อจัดลำดับลูกค้าตามยอดใช้จ่าย(จำนวนค่าเช่ารวม) ดังนั้นสิ่งที่จะต้องแสดง คือ customer_id 
-- เรียงจากน้อยไปมาก และ rank ตามยอดใช้จ่ายของลูกค้าคนนั้น โดยคนที่มียอดใช้จ่ายสูงสุด คืออันดับ 1

SELECT customer_id, RANK() OVER (ORDER BY sum_amount DESC) AS rank_amount
FROM ()
ORDER BY customer_id