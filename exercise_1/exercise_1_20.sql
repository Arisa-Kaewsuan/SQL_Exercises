-- เขียน sql เพื่อหาผลรวมของความยาว(length) ของหนังที่มี rating เป็น G จากตาราง film

SELECT SUM(length) FROM film WHERE rating = 'G'