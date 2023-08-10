-- เขียน sql แสดง category's name และ amount รวมของหนังแต่ละหมวดหมู่
-- โดยแสดงข้อมูลตามลำดับชื่อหมวดหมู่จากน้อยไปมาก

SELECT category.name, SUM(payment.amount)
FROM payment
INNER JOIN rental
ON payment.rental_id = rental.rental_id
INNER JOIN inventory
ON rental.inventory_id = inventory.inventory_id
INNER JOIN film_category
ON inventory.film_id = film_category.film_id
INNER JOIN category
ON film_category.category_id = category.category_id
GROUP BY category.name
ORDER BY category.name ASC
