-- เขียน sql แสดง customer_id และ amount รวมของลูกค้าแต่ละคน

SELECT customer.customer_id, SUM(payment.amount) 
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id