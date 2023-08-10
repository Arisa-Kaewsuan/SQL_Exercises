# SQL &nbsp;Exercises

-  &nbsp; **วิธีเขียนโปรแกรมภาษา &nbsp;SQL**

       1.  SQL เป็นภาษาที่ไว้สำหรับจัดการ ฐานข้อมูล (Database) ดังนั้นต้องมีฐานข้อมูลให้จัดการก่อน
   
     > จะสร้างเองก็ได้โดยใช้ &nbsp;DBMS &nbsp;อย่าง &nbsp;phpMyAdmin&nbsp; แต่ในตัวอย่างนี้เราจะใช้ &nbsp;Free &nbsp;sample &nbsp;data&nbsp; ของ &nbsp;MySQL&nbsp; ที่ชื่อ &nbsp;[sakila](https://dev.mysql.com/doc/index-other.html)

       2.  ต้องมี Editor ในการเขียน SQL แล้วดูผลลัพธ์ ทำได้หลายวิธีเลือกตามสะดวก  เช่น
           2.1  ใช้ vscode  :  install extension " SQLServer " >> add sample data ที่โหลดมา
           2.2  ใช้โปรแกรม DB Browser (SQLite)  :  โหลดโปรแกรมมา add sample data ก็ใช้ได้เลย
           2.3  ใช้ sql editor online อย่าง programiz.com  หรือ  sqliteonline.com  :  เข้าเว็บแล้ว import data มาก็ใช้ได้เลย
 
<br/>

-  &nbsp; **&nbsp;SQL &nbsp;Syntax**
  
   - &nbsp; Insert &nbsp;:&nbsp; ```INSERT INTO [table_name] (column1, column2, ...) VALUES (value1, value2, ...);```
   
   - &nbsp; Select &nbsp;:&nbsp; ```SELECT [comlumn_name] FROM [table_name];```

   - &nbsp; Update &nbsp;:&nbsp;```UPDATE [table_name] SET [column1 = value1] WHERE [condition];```

   - &nbsp; Delete &nbsp;:&nbsp; ```DELETE FROM [table_name] WHERE [condition];```

<br/><br/><br/>

## Exercise_1 
1.  &nbsp;&nbsp; ดึงทุก column จากตาราง staff มาดู &nbsp;&nbsp; [[เฉลย]](https://github.com/Arisa-Kaewsuan/SQL_Exercises/blob/main/exercise_1/exercise_1_01.sql)
2.  &nbsp;&nbsp; -
3.  &nbsp;&nbsp; -
4.  &nbsp;&nbsp;

<br/><br/><br/>

## Index
-  &nbsp; DBMS

              DBMS ( Database Management System ) คือ ระบบ/โปรแกรม จัดการฐานข้อมูล ซึ่ง phpMyAdmin ใช้จัดการฐานข้อมูล MySQL
       ที่ใช้ภาษา SQL ในการ Query ข้อมูล
