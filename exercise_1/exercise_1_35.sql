-- เขียน sql เพื่อแสดง customer_id และ amount รวมของลูกค้าแต่ละคนที่มีรหัสลูกค้าไม่เกิน 50 
-- โดยใช้ Window Functions

SELECT customer_id, SUM(amount)
OVER (PARTITION BY customer_id ) AS sum_amount
FROM payment
WHERE customer_id <= 50