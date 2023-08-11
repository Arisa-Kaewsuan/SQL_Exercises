# SQL  &nbsp;SYNTAX

- &nbsp; คำสั่งภาษา SQL มี 3 ประเภท ดังนี้

<br/><br/>

## [1.&nbsp;) &nbsp;&nbsp; Data &nbsp;Definition &nbsp;:&nbsp;DDL 🔗](https://www.w3schools.com/sql/default.asp)
:&nbsp;&nbsp; เป็นคำสั่งใช้จัดการ สร้าง ลบ Database(ฐานข้อมูล) และ Table(ตาราง) ใช้ในขั้นตอนการสร้างฐานข้อมูล และเพิ่มข้อมูลลงตาราง

<br/>

   - &nbsp; Create DB &nbsp;:&nbsp; ```CREATE DATABASE [databasename];```
   
   - &nbsp; Drop DB &nbsp;:&nbsp; ```DROP DATABASE [databasename];```

   <br/><br/>

   - &nbsp; Create Table &nbsp;:&nbsp; ```CREATE TABLE [table_name] ( column1 datatype, column2 datatype);```
   - &nbsp; Drop Table &nbsp;:&nbsp; ```DROP TABLE [table_name];```

<br/><br/><br/>

 ## [2.&nbsp;) &nbsp;&nbsp; Data &nbsp;Manipulation &nbsp;Language &nbsp;:&nbsp; DML 🔗](https://developer.mozilla.org/en-US/)
:&nbsp;&nbsp;  คือคำสั่งที่ใช้ในการ Query  เพิ่ม ลบ แก้ไข ดึง ข้อมูล

<br/>

   - &nbsp; อยากเพิ่มข้อมูลลง ตาราง... column... ใช้คำสั่ง Insert into
     > &nbsp; Insert &nbsp;:&nbsp; ```INSERT INTO [table_name] (column1, column2, ...) VALUES (value1, value2, ...);```

   - &nbsp; อยากดึงข้อมูลจาก column... จาก ตาราง... ใช้คำสั่ง Select from 
     > &nbsp; Select &nbsp;:&nbsp; ```SELECT [comlumn_name] FROM [table_name];```

   - &nbsp; อยากแก้ไขข้อมูลใน ตาราง... column... ใช้คำสั่ง Update set  
     > &nbsp; Update &nbsp;:&nbsp;```UPDATE [table_name] SET [column1 = value1] WHERE [condition];```

   - &nbsp; อยากลบข้อมูลจาก ตาราง...  ใช้คำสั่ง Delete from
     > &nbsp; Delete &nbsp;:&nbsp; ```DELETE FROM [table_name] WHERE [condition];```

<br/><br/><br/>

 ## [3.&nbsp;) &nbsp;&nbsp; Data &nbsp;Control &nbsp;Language &nbsp;:&nbsp; DCL 🔗](https://mariadb.org/)
:&nbsp;&nbsp; เป็นคำสั่งควบคุมที่ช่วยให้เรา filter ข้อมูลได้ ว่าอยากเพิ่ม ลบ แก้ไข ดึง ข้อมูลแค่ไหน ก็กำหนดเงื่อนไข กำหนดขอบเขตให้มันด้วยคำสั่งเหล่านี้ได้

<br/>

   - &nbsp; อยากเลือกข้อมูลใน column... จากตาราง... มาแสดงโดย " ไม่แสดงค่าซ้ำ " ใช้คำสั่ง Distinct นำหน้าชื่อตาราง
     > &nbsp; Distinct &nbsp;:&nbsp; ```SELECT DISTINCT [column_name] FROM [table_name];```
     
   <br/><br/>

   - &nbsp; อยากเลือกข้อมูลใน column... จากตาราง... มาแสดงโดย " มีเงื่อนไข " ใช้คำสั่ง Where กำหนดเงื่อนไขเหมือนเวลากำหนดเงื่อนไขใน if-else ของภาษาอื่น
     > &nbsp; Where &nbsp;:&nbsp; ```SELECT [column_name] FROM [table_name] WHERE [condition];``` <br/>
     > &nbsp; Where - AND &nbsp;:&nbsp; ```SELECT [column] FROM [table_name] WHERE [condition1] AND [condition2]``` <br/>
     > &nbsp; Where - OR &nbsp;:&nbsp; ```SELECT [column] FROM [table_name] WHERE [condition1] OR [condition2]``` <br/>
     > &nbsp; Where - NOT &nbsp;:&nbsp; ```SELECT [column] FROM [table_name] WHERE NOT [condition]``` <br/>
     > &nbsp; Where - BETWEEN &nbsp;:&nbsp; ```SELECT [column_name] FROM [table_name] WHERE [column_name] BETWEEN [value1] AND [value2];``` คือ การเลือกข้อมูลใน column... ที่มีค่าระหว่าง value1 - value2 มาแสดง<br/>
     > &nbsp; Where - LIKE &nbsp;:&nbsp; ```SELECT [column] FROM [table_name] WHERE [column] LIKE [pattern];``` <br/><br/>
       > Pattern / Wildcards
       > - &nbsp;'&nbsp;a&nbsp;%&nbsp;'&nbsp;  &nbsp;:&nbsp;  คือ ค่าที่มี format ขึ้นต้นด้วยอักษร a
       > - &nbsp;'&nbsp;%&nbsp;a&nbsp;'&nbsp;  &nbsp;:&nbsp;  คือ ค่าที่มี format ลงท้ายด้วยอักษร a
       > - &nbsp;'&nbsp;_r&nbsp;%&nbsp;'&nbsp;  &nbsp;:&nbsp;  คือ ค่าที่มี format อักษร r อยู่ลำดับที่ 2
       > - &nbsp;'&nbsp;%&nbsp;or&nbsp;%&nbsp;'&nbsp;  &nbsp;:&nbsp;  คือ ค่าที่มี format อักษร or อยู่
 
   <br/><br/>

   - &nbsp; อยากเลือกข้อมูลใน column... จากตาราง... มาแสดงโดย " เรียงค่าตาม column... เรียงจากน้อยไปมาก " ใช้คำสั่ง Order by ร่วมกับ ASC
     > &nbsp; ORDER BY - ASC &nbsp;:&nbsp; ```SELECT [column] FROM [table_name] ORDER BY [column] ASC;```

   - &nbsp; อยากเลือกข้อมูลใน column... จากตาราง... มาแสดงโดย " เรียงค่าตาม column... เรียงจากมากไปน้อย " ใช้คำสั่ง Order by ร่วมกับ DESC
     > &nbsp; ORDER BY - DESC &nbsp;:&nbsp; ```SELECT [column] FROM [table_name] ORDER BY [column] DESC;```

   <br/><br/>

   - &nbsp; อยากเลือกข้อมูลจากตารางมากกว่า 1 ตารางที่มีความสัมพันธ์กันตาม Euiler Diagram แบบ  " A ∩ B คือ ส่วนที่ซ้ำกัน " ใช้คำสั่ง [Inner join](https://www.w3schools.com/sql/sql_join_inner.asp)  เพราะ SQL ถูกสร้างมาใช้กับฐานข้อมูลแบบ Relational Database ที่ตารางจะไม่เก็บ column ซ้ำแต่ใช้การแยกตารางเป็นตารางย่อยๆ แล้วถ้าตารางไหนไหนอยากใช้ข้อมูลจากตารางอื่น ก็ใช้ column ที่เป็น Forirgn key ในการอ้างอิง
     > &nbsp; ตัวอย่างการ INNER JOIN แบบ 2 column &nbsp;:&nbsp;
     > ```
     >    SELECT Orders.OrderID, Customers.CustomerName
     >    FROM Orders
     >    INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;
     
     > &nbsp; ตัวอย่างการ INNER JOIN แบบ 3 column &nbsp;:&nbsp;
     > ```
     >    SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
     >    FROM ((Orders
     >    INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
     >    INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);

   - &nbsp; อยากเลือกข้อมูลจากตารางมากกว่า 1 ตารางที่มีความสัมพันธ์กันตาม Euiler Diagram แบบ  " A - B คือ มีใน A ไม่มีใน B " ใช้คำสั่ง [Left join](https://www.w3schools.com/sql/sql_join_left.asp)
     > &nbsp; ตัวอย่างการ INNER JOIN แบบ 2 column &nbsp;:&nbsp;
     > ```
     >    SELECT Customers.CustomerName, Orders.OrderID
     >    FROM Customers
     >    LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
     >    ORDER BY Customers.CustomerName;

   - &nbsp; อยากเลือกข้อมูลจากตารางมากกว่า 1 ตารางที่มีความสัมพันธ์กันตาม Euiler Diagram แบบ  " B - A คือ มีใน B ไม่มีใน A " ใช้คำสั่ง [Right join](https://www.w3schools.com/sql/sql_join_right.asp)
     > &nbsp; ตัวอย่างการ INNER JOIN แบบ 2 column &nbsp;:&nbsp;
     > ```
     >    SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
     >    FROM Orders
     >    RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
     >    ORDER BY Orders.OrderID;
 
   <br/><br/>

   - &nbsp; อยากนับว่าใน column... จากตาราง... " มีกี่ค่า/กี่จำนวน/กี่ row " ใช้คำสั่ง Count ระบุหน้าชื่อ column
     > &nbsp; COUNT &nbsp;:&nbsp; ```SELECT COUNT(column_name) FROM [table_name] WHERE [condition];```

   - &nbsp; อยากหาค่าเฉลี่ยของ column... จากตาราง...  ใช้คำสั่ง AVG ระบุหน้าชื่อ column
     > &nbsp; AVG &nbsp;:&nbsp; ```SELECT AVG(column_name) FROM [table_name] WHERE [condition];```

   - &nbsp; อยากหาผลรวมของ column... จากตาราง...  ใช้คำสั่ง SUM ระบุหน้าชื่อ column
     > &nbsp; SUM &nbsp;:&nbsp; ```SELECT SUM(column_name) FROM [table_name] WHERE [condition];```
     
   - &nbsp; อยากนับว่าใน column... จากตาราง... ที่อยู่ในกลุ่มเดียวกันตาม column... " มีกี่ค่า/กี่จำนวน/กี่ row "  ใช้คำสั่ง Group by
     > &nbsp; GROUP BY &nbsp;:&nbsp; ```SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country;```
