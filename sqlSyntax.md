# SQL  &nbsp;SYNTAX

- &nbsp; คำสั่งภาษา SQL มี 3 ประเภท ดังนี้

<br/><br/>

## 1.&nbsp;) &nbsp;&nbsp; Data &nbsp;Definition &nbsp;:&nbsp;DDL
:&nbsp;&nbsp; DDL เป็นกลุ่มคำสั่งที่ใช้ในการสร้างฐานข้อมูล การกำหนดโครงสร้างข้อมูลว่ามีColumnหรือAttributeใด  ชนิดข้อมูลเป็นประเภทใด รวมทั้งการจัดการด้านการเพิ่ม แก้ไข ลบ Attributeต่างๆใน Relation และการสร้างดัชนี (Index)

   - &nbsp; Insert &nbsp;:&nbsp; ```INSERT INTO [table_name] (column1, column2, ...) VALUES (value1, value2, ...);```
   
   - &nbsp; Select &nbsp;:&nbsp; ```SELECT [comlumn_name] FROM [table_name];```

   - &nbsp; Update &nbsp;:&nbsp;```UPDATE [table_name] SET [column1 = value1] WHERE [condition];```

   - &nbsp; Delete &nbsp;:&nbsp; ```DELETE FROM [table_name] WHERE [condition];```

<br/><br/><br/>

 ## 2.&nbsp;) &nbsp;&nbsp; Data &nbsp;Manipulation &nbsp;Language &nbsp;:&nbsp; DML
:&nbsp;&nbsp;  เป็นกลุ่มคำสั่งที่ถือเป็นแกนสำคัญของภาษา SQL  โดยกลุ่มคำสั่งเหล่านี้จะใช้ในการ  Update   เพิ่ม   ปรับปรุงและการ    Query   ข้อมูลในฐานข้อมูล ซึ่งอาจเป็นชุดคำสั่งในลักษณะ Interactive SQL  หรือ  Embedded SQL ก็ได้

<br/>

   - &nbsp; Distinct &nbsp;:&nbsp; ```SELECT DISTINCT [column_name] FROM [table_name];```
     
   <br/><br/>
 
   - &nbsp; Where &nbsp;:&nbsp; ```SELECT [column_name] FROM [table_name] WHERE [condition];```
 
   - &nbsp; Where - AND &nbsp;:&nbsp; ```SELECT [column] FROM [table_name] WHERE [condition1] AND [condition2]```
 
   - &nbsp; Where - OR &nbsp;:&nbsp; ```SELECT [column] FROM [table_name] WHERE [condition1] OR [condition2]```
 
   - &nbsp; Where - NOT &nbsp;:&nbsp; ```SELECT [column] FROM [table_name] WHERE NOT [condition]```
 
   - &nbsp; Where - NOT &nbsp;:&nbsp; ```SELECT [column] FROM [table_name] WHERE [column] LIKE [pattern];```

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

<br/><br/><br/>

 ## 3.&nbsp;) &nbsp;&nbsp; Data &nbsp;Control &nbsp;Language &nbsp;:&nbsp; DCL
:&nbsp;&nbsp;  DCL  ซึ่งเป็นกลุ่มคำสั่งที่จะช่วยให้ผู้บริหารฐานข้อมูล  (DBA) สามารถควบคุมฐานข้อมูลเพื่อกำหนดสิทธิการอนุญาต  (Grant)  หรือการยกเลิกการเข้าใช้ (Revoke)  ฐานข้อมูล ซึ่งเป็นกระบวนการป้องกันความปลอดภัยในฐานข้อมูล  รวมทั้งการจัดการทรานแซกชั่น (Transaction Management) หลักสูตรที่เกี่ยวข้อง
