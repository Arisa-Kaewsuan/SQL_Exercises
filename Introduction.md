# INTRODUCTION
   -  &nbsp; ฐานข้อมูล (Database) คืออะไร ใช้ทำอะไร ?

                    ฐานข้อมูล (Database : DB) คือ ที่สำหรับเก็บข้อมูล หรือโปรแกรมสำหรับเก็บข้อมูล หรือโปรแกรมโครงสร้างข้อมูล (Data Structure)
           ผู่ให้บริการ DB หรือ ยี่ห้อ DB ที่มีให้ใช้ในปัจจุบันมีทั้งฟรี และไม่ฟรี ส่วนมากจะเป็นแบบ ถ้าสำหรับฝึกใช้จะฟรีก็จะมีข้อจำกัดว่าใช้ได้แค่ไหน
           แต่ถ้าใช้ในเชิงธุรกิจ ระดับ enterprise ก็จะมี version เสียเงิน เช่น MySQl , MongoDB , Oracle , MariaDB (พัฒนาโดย
           Michael Widenius ผู้พัฒนา MySQL เพราะ mysql ถูกซื้อโดย Oracle จึงทำให้มีบางส่วนไม่เห็นด้วยว่ามันอาจไม่ฟรีอีกต่อไป),
           Postgre (พัฒนาโดยมหาลัยชื่อดังอย่าง University of California, Berkeley ที่ตั้งอยู่ในโซนที่เรียกว่า Silicon Valley)
      
                    ใช้เก็บข้อมูล และมีฟีเจอร์อื่นๆ เช่น create insert update delete โดยใช้โปรแกรม/เว็บจัดการฐานข้อมูล ที่เรียกว่า
           (Database Management System : DBMS)
   <br/>
      
   -  &nbsp; ฐานข้อมูล (Database) มีกี่แบบ ?

           ฐานข้อมูลมี 4 แบบ คือ
               - Hierarchical Database  : โครงสร้างภายในเป็นแบบ (Architecture) Tree ทำให้แก้ไขยาก เข้าถึงยาก เปลี่ยนแปลงยาก
               - Network Database : พัฒนามาจากแบบแรก โครงสร้าง (Architecture) ภายในเป็นแบบ Network แก้ไขง่ายขึ้น แต่มีปัยหาเก็บ
                                    ข้อมูลซ้ำซ้อน และไม่ปลอดภัย จึงมีการพัฒนาไปเป็น relational database 
               - Relational Database : ปลอดภัย และลดการเก็บข้อมูลซ้ำซ้อน
               - Non-Relational Database : ...
      
           แต่ที่นิยมใช้กันในปัจจุบันมี 2 ประเภท คือ
      
           1.  Relational Database (RDB) :
               -  RDBMS ใช้เก็บข้อมูลประเภท Structure Data คือ ข้อมูลที่มีโครงสร้างแน่นอน (เป็นตาราง - Table) และมีความสัมพันธ์กัน
                  ทำให้ไม่ต้องเก็บข้อมูลซ้ำซ้อนได้ เพราะ มันจะเก็บแบบแยกเป็นตารางย่อยที่เล็กที่สุด (จึงต้องมีการออกแบบฐานข้อมูล - Database Design
                  ในการใช้งาน) แล้วถ้าตารางไหนอยากใช้ข้อมูลของตารางอื่นก็แค่ลิ้งข้อมูลกันโดยใช้ column ที่เป็น foriegn key เชื่อมความสัมพันธ์
                  ของสองตาราง
               -  ข้อมูลแบบ Structuere Data ใช้ภาษา SQL ในการจัดการ
               -  ตัวอย่าง Relational Database เช่น MySQl , MariaDB , Postgre , ...

           2.  Non-Relational Database :
               -  ฐานข้อมูลประเภทนี้จะใช้เก็บข้อมูลประเภท Unstructure Data (คือข้อมูลไม่มีโครงสร้าง เช่น ไฟล์รูปภาพ) และ Semi- Structure Data
                  (คือข้อมูลที่มีโครงสร้าง/มีรูปแบบการเก็บข้อมูลเป็นแบบแผน แต่ไม่ใช่ Table เช่น JSON , file)
               -  ตัวอย่างประเภทข้อมูลที่เก็บใน ฐานข้อมูลแบบ  Non-Relational Database
                    1.  key-value : JSON , Dictionary ส่วนมากเป็นข้อมูลที่ได้จาก software พวก web , mobile app
                    2.  Document : file , excel
                    3.  Graph :
                    4.  wid-column

           เราต้องรู้ว่าฐานข้อมูล และ ข้อมูลมีกี่แบบ เพื่อให้เลือกใช้ได้ถูกว่าถ้าเรามีข้อมูลแบบนี้ จะใช้ Database แบบไหนในการเก็บ แล้ว Database แบบนั้นมีใครให้
           บริการบ้าง เราก็ไปศึกษาว่าบริการโปรแกรมฐานข้อมูลของเจ้านั้นๆมีวิธิการใช้ยังไง สร้างdatabase สร้างtableมาเก็บข้อมูลยังไง เพิ่มข้อมูลลงtableยังไง อยาก
           ให้ app/โปรแกรม ที่สร้างจากภาษา java/python/... เชื่อมต่อ ดึงข้อมูลจาก Database ที่สร้างไว้ทำยังไง
   <br/>

   -  &nbsp; ฐานข้อมูล (Database) เกิดขึ้นมาได้ยังไง ?

           L ...
   <br/>

   -  &nbsp; คำศัพท์ที่ควรรู้เกี่ยวกับ Relational Database (RDB) ?

           1.  Entity = Table = ตาราง
           2.  Record = Colum = Attribute = element = property = คุณลักษณะ / คอลลัม
           3.  Foriegn Key = 
           4.  Primary Key =
           5.  Auto increment =
           6.  การทำ .... คือ ...
   <br/>

   -  &nbsp; SQL คืออะไร ?

            SQL เป็นภาษาที่ไว้สำหรับจัดการข้อมูลที่มีลักษณะเป็น Structure Data
   <br/>
      
   -  &nbsp; SQL ใช้ยังไง ?

            SQL ใช้ได้ 2 แบบ คือ
      
             1.  ใช้ในโปรแกรมประเภท DBMS ใช้ในการ Query ข้อมูล คนที่จะได้ใช้งานแนวนี้จะเป็นคนที่ทำงานสาย Data
                 เช่น Database Admin ที่คอย Create Read Update Delete ในฐานข้อมูลใช้ tool เช่น phpMyAdmin
                 หรือ Data Analyst ที่ต้องใช้ tool เช่น BigQuery ในการ filter ข้อมูลมาหา insight ของข้อมูล
                 เพื่อทำ report จึงต้องถนัดภาษา SQL ในการใช้ร่วมกับ tool ต่างๆพวกนั้น

         > วิธีใช้แบบแรก เรียกว่า SQL Query คือการ query ข้อมูลโดยการใช้ sql ในโปรแกรม DBMS/vscode/... ทำได้โดย &nbsp;: <br/><br/>
         > 1.1&nbsp;)&nbsp;&nbsp;   ต้องมีฐานข้อมูลให้จัดการก่อน จะสร้างเองก็ได้โดยใช้ &nbsp;DBMS &nbsp;อย่าง &nbsp;phpMyAdmin&nbsp;
         >        แต่ในตัวอย่างนี้เราจะใช้ &nbsp;Free &nbsp;sample &nbsp;data&nbsp; ของ &nbsp;MySQL&nbsp; ที่ชื่อ &nbsp;[sakila](https://dev.mysql.com/doc/index-other.html) <br/><br/>
         > 1.2&nbsp;)&nbsp;&nbsp;   ต้องมี Editor/DBMS ในการเขียน SQL แล้วดูผลลัพธ์ ทำได้หลายวิธีเลือกตามสะดวก  เช่น
         > - ใช้ vscode  :  install extension " SQLServer " >> add sample data ที่โหลดมา
         > - ใช้ phpMyAdmin : ใช้ผ่านเว็บ phpMyAdmin ได้เลย
         > - ใช้โปรแกรม DB Browser (SQLite)  :  โหลดโปรแกรมมา add sample data ก็ใช้ได้เลย
         > - ใช้ sql editor online อย่าง programiz.com  หรือ  sqliteonline.com  :  เข้าเว็บแล้ว import data มาก็ใช้ได้เลย
      
      
             2.  ใช้ร่วมกับภาษาอื่นๆ เช่น python , java , javascript, ... เพื่อให้โปรแกรมที่สร้างจากภาษานั้นๆ สามารถ
                 เชื่อมต่อฐานข้อมูล ( connect database) เพื่อเขียนโปรแกรมสั่ง Create Read Update Delete ฐานข้อมูลได้
                 คนที่จะได้ใช้งานแนวนี้จะเป็นคนที่ทำงานสาย Developer เป็นนักพัฒนา เช่น พัฒนา web , พัฒนา mobile application
                 ก็ต้องมีการดึงข้อมูลจากฐานข้อมูลมาใช้ หรือมีการเก็บข้อมูลลงฐานข้อมูล เป็นต้น คนสายนี้จะต้องฝึกการเขียนโปรแกรมเชื่อมต่อ
                 ฐานข้อมูล ซึ่งในแต่ละภาษาก็จะมี syntax แตกต่างกันไป แต่ขั้นตอนหรือ concept การเชื่อมต่อจะเหมือนๆกัน
      
         > วิธีใช้แบบที่สอง เรียกว่า SQL Embeded คือการฝังคำสั่ง sql ไว้ในภาษาอื่น ทำได้โดย &nbsp;: <br/><br/>
         > แบบที่สองนี้จะสามารถเชื่อมต่อฐานข้อมูลได้นอกจากจะมีฐานข้อมูลแล้ว ต้องมี API/Driver/Connector ของภาษาที่เราใช้  เช่น  python - pymysql  &nbsp;&nbsp;&nbsp;java - JDBC  API ช่วยให้เราเขียน SQL ในภาษานั้นๆได้
     
   <br/>
      
   -  &nbsp; DBMS คืออะไร ?

                   DBMS คือ Database Management System  เป็นโปรแกรมที่มาคู่กับฐานข้อมูล ใช้ในการจัดการฐานข้อมูล (CRUD)
            เช่น  phpMyAdmin เป็น DBMS ของฐานข้อมูล (Database) MySQL แต่ยังสามารถใช้กับฐานข้อมูล MariaDB ได้ด้วย
            #  MariaDB พัฒนาโดยคนที่เคยพัฒนา MySQL
   <br/>
      
   -  &nbsp; การ Query ข้อมูล คืออะไร ?

            Query คือ การจัดการข้อมูล : CRUD - Create Read Update Delete
   <br/>
      
   -  &nbsp; [NoSQL คืออะไร ? 🔗](https://phuri.medium.com/nosql-%E0%B8%84%E0%B8%B7%E0%B8%AD%E0%B8%AD%E0%B8%B0%E0%B9%84%E0%B8%A3-%E0%B8%95%E0%B9%88%E0%B8%B2%E0%B8%87%E0%B8%88%E0%B8%B2%E0%B8%81-rdbms-%E0%B8%AB%E0%B8%A3%E0%B8%B7%E0%B8%AD-sql-database-%E0%B8%AD%E0%B8%A2%E0%B9%88%E0%B8%B2%E0%B8%87%E0%B9%84%E0%B8%A3-dd8ac91a4197)

            NoSQL คือ " Not only SQL " เป็นฐานข้อมูลที่ไม่ใช่ Relational Database ถูกคิดค้นขึ้นมาเพื่อแก้ปัญหาหลักๆ 2 อย่างที่มีใน RDBMS คือ
             1.)   เพิ่มความสามารถในการจัดเก็บ unstructured data (หรือข้อมูลที่มีรูปแบบไม่แน่นอน)
             2.)   เพิ่มความสามารถในการขยายระบบในรูปแบบแนวนอน (Horizontal Scalability) เพื่อรองรับปริมาณข้อมูลที่มากขึ้นในยุคนี้


            ตัวอย่างฐานข้อมูลที่เป็นแบบ NoSQL เช่น MongoDB
   <br/>
      
   -  &nbsp; Relational Database คืออะไร ?

            คือ ฐานข้อมูลที่เก็บข้อมูลแบบ structured data (หรือข้อมูลที่มีรูปแบบชัดเจน) เช่น  เป็นตาราง (table) ทำให้ใช้ SQL ในการจัดการได้


            ตัวอย่างฐานขอมูลที่เป็นแบบ SQL เช่น MySQL , MariaDB , Oracle
   <br/>

   -  &nbsp; [mongoDB](https://www.youtube.com/watch?v=VgyEablNJkk) คืออะไร ใช้งานยังไง ?

            mongoDB เป็นฐานข้อมูลแบบ NoSQL ต่างจาก SQL มันเก็บข้อมูลเป็น JSON มีให้ใช้ 2 แบบ
      
            1. ใช้แบบ web database  :  คล้ายๆ mysql-phpmyadmin ที่เราจัดการข้อมูล ดูข้อมูลผ่านเว็บได้
      
            2. ใช้แบบ cloud database  :  คือการที่เรา remote ไปใช้คอมเครื่องอื่นที่เขาเตรียมไว้ให้ ในนั้นก็จะลงโปรแกรม Database อะไรไว้
               เราก็ยังจัดการข้อมูล ดูข้อมูลผ่านเว็บได้แต่แบบนี้เราจะสามารถ scale ได้ เพราะ ไม่ได้ใช้เครื่องตัวเอง วันนึงมีคนใช้โปรแกรมเรา
               มากขึ้น เรามีความต้องการ database ที่ใหญ่ขึ้น ก็สามารถกดไม่กี่คลิ๊ก ทาง mongoDB ก็จัดการให้แล้ว ไม่ต้อง restructure ใหม่
   <br/>




