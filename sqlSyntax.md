# SQL  &nbsp;SYNTAX





  
   - &nbsp; Insert &nbsp;:&nbsp; ```INSERT INTO [table_name] (column1, column2, ...) VALUES (value1, value2, ...);```
   
   - &nbsp; Select &nbsp;:&nbsp; ```SELECT [comlumn_name] FROM [table_name];```

   - &nbsp; Update &nbsp;:&nbsp;```UPDATE [table_name] SET [column1 = value1] WHERE [condition];```

   - &nbsp; Delete &nbsp;:&nbsp; ```DELETE FROM [table_name] WHERE [condition];```
 
   -----------------------------------------------------------------------------------------------------------------

   - &nbsp; Distinct &nbsp;:&nbsp; ```SELECT DISTINCT [column_name] FROM [table_name];```
     
   <br/>
 
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
 
   <br/>
 
   - &nbsp; ORDER BY - ASC &nbsp;:&nbsp; ```SELECT [column] FROM [table_name] ORDER BY [column] ASC;```
 
   - &nbsp; ORDER BY - DESC &nbsp;:&nbsp; ```SELECT [column] FROM [table_name] ORDER BY [column] DESC;```
 
   <br/>
 
   - &nbsp; COUNT &nbsp;:&nbsp; ```SELECT COUNT(column_name) FROM [table_name] WHERE [condition];```
 
   - &nbsp; AVG &nbsp;:&nbsp; ```SELECT AVG(column_name) FROM [table_name] WHERE [condition];```
 
   - &nbsp; SUM &nbsp;:&nbsp; ```SELECT SUM(column_name) FROM [table_name] WHERE [condition];```

<br/><br/><br/>
