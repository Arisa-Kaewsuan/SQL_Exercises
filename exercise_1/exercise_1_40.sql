-- เขียน sql เพื่อจัดลำดับหมวดหมู่ ตามยอดขายของแต่ละหมวดหมู่ ดังนั้นสิ่งที่จะต้อง
-- แสดงคือ ชื่อหมวดหมู่(category's name) เรียงจากน้อยไปมาก และ rank ตามยอดขายของ
-- หมวดหมู่นั้น โดยหมวดหมู่ที่มียอดขายสูงสุดคืออันดับ 1 

SELECT name, RANK() OVER () As rank_amount
FROM 