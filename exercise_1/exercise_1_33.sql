-- เขียน sql หายอดขาย(amount) เฉลี่ยของแต่ละร้าน(store) 
-- โดยแสดงข้อมูลตามลำดับ store_id จากน้อยไปมาก

SELECT AVG(payment.amount)
FROM payment
INNER JOIN rental
ON payment.rental_id = rental.rental_id
INNER JOIN inventory
ON rental.inventory_id = inventory.inventory_id
GROUP BY inventory.store_id
