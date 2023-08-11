# SQL  &nbsp;SYNTAX

- &nbsp; คำสั่งภาษา SQL มี 3 ประเภท ดังนี้

<br/><br/>

## 1.&nbsp;) &nbsp;&nbsp; Data &nbsp;Definition &nbsp;:&nbsp;DDL
:&nbsp;&nbsp; เป็นคำสั่งใช้จัดการ สร้าง ลบ Database(ฐานข้อมูล) และ Table(ตาราง) ใช้ในขั้นตอนการสร้างฐานข้อมูล และเพิ่มข้อมูลลงตาราง

<br/>

   - &nbsp; Create DB &nbsp;:&nbsp; ```CREATE DATABASE [databasename];```
   
   - &nbsp; Drop DB &nbsp;:&nbsp; ```DROP DATABASE [databasename];```

   <br/><br/>

   - &nbsp; Create Table &nbsp;:&nbsp; ```CREATE TABLE [table_name] ( column1 datatype, column2 datatype);```
   - &nbsp; Drop Table &nbsp;:&nbsp; ```DROP TABLE [table_name];```

<br/><br/><br/>

 ## 2.&nbsp;) &nbsp;&nbsp; Data &nbsp;Manipulation &nbsp;Language &nbsp;:&nbsp; DML
:&nbsp;&nbsp;  คือคำสั่งที่ใช้ในการ Query  เพิ่ม ลบ แก้ไข ดึง ข้อมูล

<br/>

   - &nbsp; Insert &nbsp;:&nbsp; ```INSERT INTO [table_name] (column1, column2, ...) VALUES (value1, value2, ...);```
   
   - &nbsp; Select &nbsp;:&nbsp; ```SELECT [comlumn_name] FROM [table_name];```

   - &nbsp; Update &nbsp;:&nbsp;```UPDATE [table_name] SET [column1 = value1] WHERE [condition];```

   - &nbsp; Delete &nbsp;:&nbsp; ```DELETE FROM [table_name] WHERE [condition];```

<br/><br/><br/>

 ## 3.&nbsp;) &nbsp;&nbsp; Data &nbsp;Control &nbsp;Language &nbsp;:&nbsp; DCL
:&nbsp;&nbsp; เป็นคำสั่งควบคุมที่ช่วยให้เรา filter ข้อมูลได้ ว่าอยากดูแค่ไหน ก็กำหนดเงื่อนไขให้มันด้วยคำสั่งเหล่านี้

<br/>

   - &nbsp; Distinct &nbsp;:&nbsp; ```SELECT DISTINCT [column_name] FROM [table_name];```
     
   <br/><br/>
 
   - &nbsp; Where &nbsp;:&nbsp; ```SELECT [column_name] FROM [table_name] WHERE [condition];```
 
   - &nbsp; Where - AND &nbsp;:&nbsp; ```SELECT [column] FROM [table_name] WHERE [condition1] AND [condition2]```
 
   - &nbsp; Where - OR &nbsp;:&nbsp; ```SELECT [column] FROM [table_name] WHERE [condition1] OR [condition2]```
 
   - &nbsp; Where - NOT &nbsp;:&nbsp; ```SELECT [column] FROM [table_name] WHERE NOT [condition]```
 
   - &nbsp; Where - LIKE &nbsp;:&nbsp; ```SELECT [column] FROM [table_name] WHERE [column] LIKE [pattern];```

       > Pattern / Wildcards
       > - &nbsp;'&nbsp;a&nbsp;%&nbsp;'&nbsp;  &nbsp;:&nbsp;  คือ ค่าที่มี format ขึ้นต้นด้วยอักษร a
       > - &nbsp;'&nbsp;%&nbsp;a&nbsp;'&nbsp;  &nbsp;:&nbsp;  คือ ค่าที่มี format ลงท้ายด้วยอักษร a
       > - &nbsp;'&nbsp;_r&nbsp;%&nbsp;'&nbsp;  &nbsp;:&nbsp;  คือ ค่าที่มี format อักษร r อยู่ลำดับที่ 2
       > - &nbsp;'&nbsp;%&nbsp;or&nbsp;%&nbsp;'&nbsp;  &nbsp;:&nbsp;  คือ ค่าที่มี format อักษร or อยู่
 
   <br/><br/>
 
   - &nbsp; ORDER BY - ASC &nbsp;:&nbsp; ```SELECT [column] FROM [table_name] ORDER BY [column] ASC;```
 
   - &nbsp; ORDER BY - DESC &nbsp;:&nbsp; ```SELECT [column] FROM [table_name] ORDER BY [column] DESC;```
 
   <br/><br/>
 
   - &nbsp; COUNT &nbsp;:&nbsp; ```SELECT COUNT(column_name) FROM [table_name] WHERE [condition];```
 
   - &nbsp; AVG &nbsp;:&nbsp; ```SELECT AVG(column_name) FROM [table_name] WHERE [condition];```
 
   - &nbsp; SUM &nbsp;:&nbsp; ```SELECT SUM(column_name) FROM [table_name] WHERE [condition];```
