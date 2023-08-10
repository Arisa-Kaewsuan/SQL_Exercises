-- เขียน sql เพื่อแสดงข้อมูล fist_name, last_name, address, city, country ของ customer ทั้งหมด
-- โดยเรียงข้อมูลตามชื่อจริงจากน้อยไปมาก

SELECT first_name, last_name, address, city, country 
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
INNER JOIN city
ON  address.city_id = city.city_id
INNER JOIN country
ON  city.country_id = country.country_id
ORDER BY first_name ASC