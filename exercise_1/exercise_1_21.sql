-- เขียน sql แสดงข้อมูล first_name, last_name, address ของ customer ทั้งหมด

SELECT first_name,last_name,address FROM customer
INNER JOIN address
ON customer.address_id = address.address_id