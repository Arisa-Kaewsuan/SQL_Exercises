# INTRODUCTION

   -  &nbsp; SQL คืออะไร ?

            SQL เป็นภาษาที่ไว้สำหรับจัดการ ฐานข้อมูล (Database)
      
   -  &nbsp; SQL ใช้ยังไง ?

            SQL ใช้ได้ 2 แบบ คือ
      
             1.  ใช้ในโปรแกรมประเภท DBMS ใช้ในการ Query ข้อมูล คนที่จะได้ใช้งานแนวนี้จะเป็นคนที่ทำงานสาย Data
                 เช่น Database Admin ที่คอย Create Read Update Delete ในฐานข้อมูลใช้ tool เช่น phpMyAdmin
                 หรือ Data Analyst ที่ต้องใช้ tool เช่น BigQuery ในการ filter ข้อมูลมาหา insight ของข้อมูล
                 เพื่อทำ report จึงต้องถนัดภาษา SQL ในการใช้ร่วมกับ tool ต่างๆพวกนั้น

         > วิธีใช้แบบแรกทำได้โดย &nbsp;: <br/><br/>
         > 1.1&nbsp;)&nbsp;&nbsp;   ต้องมีฐานข้อมูลให้จัดการก่อน จะสร้างเองก็ได้โดยใช้ &nbsp;DBMS &nbsp;อย่าง &nbsp;phpMyAdmin&nbsp;
         >        แต่ในตัวอย่างนี้เราจะใช้ &nbsp;Free &nbsp;sample &nbsp;data&nbsp; ของ &nbsp;MySQL&nbsp; ที่ชื่อ &nbsp;[sakila](https://dev.mysql.com/doc/index-other.html) <br/><br/>
         > 1.2&nbsp;)&nbsp;&nbsp;   ต้องมี Editor ในการเขียน SQL แล้วดูผลลัพธ์ ทำได้หลายวิธีเลือกตามสะดวก  เช่น
         > - ใช้ vscode  :  install extension " SQLServer " >> add sample data ที่โหลดมา
         > - ใช้โปรแกรม DB Browser (SQLite)  :  โหลดโปรแกรมมา add sample data ก็ใช้ได้เลย
         > - ใช้ sql editor online อย่าง programiz.com  หรือ  sqliteonline.com  :  เข้าเว็บแล้ว import data มาก็ใช้ได้เลย
      
      
             2.  ใช้ร่วมกับภาษาอื่นๆ เช่น python , java , javascript, ... เพื่อให้โปรแกรมที่สร้างจากภาษานั้นๆ สามารถ
                 เชื่อมต่อฐานข้อมูล ( connect database) เพื่อเขียนโปรแกรมสั่ง Create Read Update Delete ฐานข้อมูลได้
                 คนที่จะได้ใช้งานแนวนี้จะเป็นคนที่ทำงานสาย Developer เป็นนักพัฒนา เช่น พัฒนา web , พัฒนา mobile application
                 ก็ต้องมีการดึงข้อมูลจากฐานข้อมูลมาใช้ หรือมีการเก็บข้อมูลลงฐานข้อมูล เป็นต้น คนสายนี้จะต้องฝึกการเขียนโปรแกรมเชื่อมต่อ
                 ฐานข้อมูล ซึ่งในแต่ละภาษาก็จะมี syntax แตกต่างกันไป แต่ขั้นตอนหรือ concept การเชื่อมต่อจะเหมือนๆกัน
      
         > วิธีใช้แบบที่สองทำได้โดย &nbsp;: <br/><br/>
         > แบบที่สองนี้จะสามารถเชื่อมต่อฐานข้อมูลได้นอกจากจะมีฐานข้อมูลแล้ว ต้องมี API ของภาษาที่เราใช้  เช่น  python - pymysql  &nbsp;&nbsp;&nbsp;java - JDBC  API ช่วยให้เราเขียน SQL ในภาษานั้นๆได้
      
   -  &nbsp; DBMS คืออะไร ?

                   DBMS คือ Database Management System  เป็นโปรแกรมที่มาคู่กับฐานข้อมูล ใช้ในการจัดการฐานข้อมูล (CRUD)
            เช่น  phpMyAdmin เป็น DBMS ของฐานข้อมูล (Database) MySQL แต่ยังสามารถใช้กับฐานข้อมูล MariaDB ได้ด้วย
            #  MariaDB พัฒนาโดยคนที่เคยพัฒนา MySQL 
      
   -  &nbsp; การ Query ข้อมูล คืออะไร ?

            Query คือ การจัดการข้อมูล : CRUD - Create Read Update Delete
      
   -  &nbsp; [NoSQL คืออะไร ? 🔗](https://phuri.medium.com/nosql-%E0%B8%84%E0%B8%B7%E0%B8%AD%E0%B8%AD%E0%B8%B0%E0%B9%84%E0%B8%A3-%E0%B8%95%E0%B9%88%E0%B8%B2%E0%B8%87%E0%B8%88%E0%B8%B2%E0%B8%81-rdbms-%E0%B8%AB%E0%B8%A3%E0%B8%B7%E0%B8%AD-sql-database-%E0%B8%AD%E0%B8%A2%E0%B9%88%E0%B8%B2%E0%B8%87%E0%B9%84%E0%B8%A3-dd8ac91a4197)

            NoSQL คือ " Not only SQL " เป็นฐานข้อมูลที่ไม่ใช่ Relational Database ถูกคิดค้นขึ้นมาเพื่อแก้ปัญหาหลักๆ 2 อย่างที่มีใน RDBMS คือ
             1.)   เพิ่มความสามารถในการจัดเก็บ unstructured data (หรือข้อมูลที่มีรูปแบบไม่แน่นอน)
             2.)   เพิ่มความสามารถในการขยายระบบในรูปแบบแนวนอน (Horizontal Scalability) เพื่อรองรับปริมาณข้อมูลที่มากขึ้นในยุคนี้


            ตัวอย่างฐานขอมูลที่เป็นแบบ NoSQL เช่น MongoDB
      
   -  &nbsp; Relational Database คืออะไร ?

            คือ ฐานข้อมูลที่เก็บข้อมูลแบบ structured data (หรือข้อมูลที่มีรูปแบบชัดเจน) เช่น  เป็นตาราง (table) ทำให้ใช้ SQL ในการจัดการได้


            ตัวอย่างฐานขอมูลที่เป็นแบบ SQL เช่น MySQL , MariaDB , Oracle

<br/>




