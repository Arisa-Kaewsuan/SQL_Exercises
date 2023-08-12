# MONGODB &nbsp;SYNTAX

-  &nbsp; [mongoDB คืออะไร ? 🔗](https://www.youtube.com/watch?v=VgyEablNJkk) 

            mongoDB เป็นฐานข้อมูลแบบ NoSQL ต่างจาก SQL มันเก็บข้อมูลเป็น JSON มีให้ใช้ 2 แบบ
      
            1. ใช้แบบ local database  :  คล้ายๆ mysql-phpmyadmin ที่ต้องโหลดโปรแกรมฐานข้อมูล + DBMS มาไว้ในเครื่องเรา mongoDB
               + mongoDB compass (ปัจจุบันเหมือน mongoDB compass จะถูกพัฒนาเป็น web app แล้วคือใช้ผ่านเว็บได้ ไม่ต้องโหลดมาไว้บนเครื่องเรา
               โดยสมัคร account ในเว็บ mongoDB >> login >> แล้วจะสามารถใช้ได้เลย เหมือน phpMyAdmin ) 
               ให้ด้วย
      
            2. ใช้แบบ cloud database  :  คือการที่เรา remote ไปใช้คอมเครื่องอื่นที่เขาเตรียมไว้ให้ ในนั้นก็จะลงโปรแกรม Database(mongoDB)ไว้
               วิธีนี้เราจะสามารถ scale ได้ เพราะ ไม่ได้ใช้เครื่องตัวเอง วันนึงมีคนใช้โปรแกรมเรามากขึ้น เรามีความต้องการ database ที่ใหญ่ขึ้น
               ก็สามารถกดไม่กี่คลิ๊ก ทาง mongoDB ก็จัดการให้แล้ว ไม่ต้อง restructure ใหม่ 
   <br/>

  -  &nbsp; ช่วยอธิบายโครงสร้างการเก็บข้อมูลของ mongoDB หน่อย ?

           mongoDB จะมีโครงสร้างการเก็บคือ เป็น Database ที่เก็บ  Collection หลายๆอันไว้ แต่ละ Collection จะเก็บข้อมูลแบบ JSON หรือ
           ให้นึกภาพว่า mongoDB คือที่ที่เก็บไฟล์ที่มีนามสกุล .json
           >>  Collection : เปรียบได้กับ Table ใน mysql ใน mongoDB ให้นึกภาพว่ามันคือไฟล์ .json
           >>  Documents  :  ก็คือ ข้อมูล (data) ข้อมูลที่เก็บใน mongoDB จะเป็นแบบ JSON Object โดย mongoDB จะแปลง JSON เป็น
                             BSON(เป็น binary file) ทำให้ฐานข้องมูล mongoDB ทำงานได้เร็ว

           JSON คือ syntax ภาษา javascript ที่กำหนดรูปแบบ(format) การเก็บข้อมูลให้อยู่ในรูปแบบ key-value แล้วมองข้อมูล
           JSON เป็นก้อนๆ (Object) ใช้กันมากในสายทำ web เพราะ ในการทำ API ที่ต้องมีการส่งข้อมูลระหว่าง server-client ข้อมูลที่ส่ง
           จะอยู่ในรูป JSON เป็นมาตรฐาน  เมื่อก่อนจะเป็น XML ที่ syntax คล้ายๆ html แล้วมันอ่านยาก ก็เลยพัฒนามาเป็น JSON ที่มี syntax
           เป็น key-value แทน ทำให้อ่านง่ายกว่า

           List = Array ใน mongoDB ใช้เครื่องหมาย [] เวลาเรียกใช้ต้องระบุ index ถ้าไม่อยากระบุ index ตอนเรียกใช้นิยมใช้ object {} กัน
           เราสามารถ Export file json/csv ที่เราสร้างส่งให้เพื่อนได้ เพื่อนเอาไปใช้ ก็ import เข้ามา
   
  ![โครงสร้างของ mongoDB](https://github.com/Arisa-Kaewsuan/SQL_Exercises/assets/87797742/d68129ed-ef9e-4932-8d4d-a37335c9cb9b)

  <br/>

   -  &nbsp; [mongoDB ใช้งานยังไง ? 🔗](https://www.youtube.com/watch?v=gVBtHiUUi_g)
      
            1.  เราจะใช้แบบ cloud database ก็เริ่มจากสมัคร account ในเว็บ mongoDB.com เลย  ทำตามคำแนะนำไปเรื่อยๆ
                ( ปัจจุบันเหมือน mongoDB จะเป็น could service แล้ว คือย้ายทุกอย่างไปอยู่่บน web หมดแล้ว แล้วก็ไม่ได้มีแค่บริการ Database
                ยังมี service อื่นๆด้วยเหมือน cloud provider (ผู้ให้บริการ cloud) เจ้าอื่นๆอย่าง google cloud provider(GCP) ,
                microsoft Azure , Amazon AWS 

            2.  กดเลือกใช้ Database Service  :  การใช้ cloud เราจะต้องกด connect กับเครื่อง clustor (คือ เลือกเครื่องคอมที่เราจะ remote
                ไปใช้ Database) ก่อน  แล้วทำตามคำแนะนำไปเรื่อยๆเหมือนเดิม มันจะมีให้เลืกว่าเราจะจัดการฐานข้อมูล mongoDB ผ่านอะไรมีให้เลือก
                หลายแบบ 
                 - จัดการผ่าน Shell ตอน mongoDB รุ่นแรกๆออกมายังไม่มี DBMS จะจัดการผ่าน Shell อย่างเดียว
                 - ปัจจุบันมีการพัฒนาเป็น DBMS ขึ้นมามีหน้าตา UI สวยงามใช้งานง่าย ชื่อ mongoDB Compass
                 - หรือจะใช้ vscode ก็ทำได้
                แนะนำให้เลือก mongoDB Compass เลือก os ของเรา กด Download แล้วก็ install โปรแกรมปกติ (.msi คือสำหรับ window
                โหลดมาแล้ว ไม่ต้องแตก zip มันสามารถ install ได้เลย ) แล้วทำตามคำแนะนำไปเรื่อยๆเหมือนเดิม มันจะให้เรา remote ไปยัง
                เครื่อง cluster ด้วย URL ที่มันเจนมาให้ เราก็ copy เปิด mongoDB compass วาง URL และเขาจะแนะนำให้พิมพ์ password ใหม่
                ถึงจะกด connect ได้เป็นวิธีการ Authenticate ตรวจสอบตัวตนของเขา

            3.  ตอนนี้เราสามารถใช้ Database mongoDB โดยใช้ mongoDB Compass ในการจัดการ Database ได้แล้ว ซึ่งสามารถใช้ได้ 2 วิธี
                คือ จะใช้ผ่าน mongoShell ที่ชื่อ mongosh หรือ ใช้ GUI กดๆเอาก็ได้ แต่แนะนำให้ฝึกใช้ mongoShell จะได้คุ้นเคยกับคำสั่ง
                เวลาใช้เชื่อมต่อ กับ application ที่ต้องเขียนแบบ embeded ฝังในภาษาอื่นจะได้ทำได้  เพราะ mongoDB เก็บข้อมูลแบบ JSON 
                ซึ่งเป็นข้อมูลแบบ semi-structure จึงใช้ภาษา SQL จัดการไม่ได้ มันก็จะมีภาษาของมันเองในการจัดการ เราจึงต้องเรียนรู้ไว้

                เราจะเขียนโปรแกรม insert update delete หรือเชื่อมต่อ ฐานข้อมูลได้ก็ต้องมี ฐานข้อมูลก่อน  โดยจะใช้ sample data ที่เขาให้มา
                ( ถ้าใครไม่ได้เลือกโหลด sample data มาด้วยตอน install โปรแกรม ก็จะไม่มีนะ อาจจะต้องหา free sample data มาลองเล่นเอง
                เหมือนตอน mysql ) หรือสร้างเองก็ได้ เริ่มต้นเราจะมาลองทำแบบสร้างเองก่อนเพื่อให้คุ้นเคยกับคำสั่ง

                     3.1  เปิด mongoDB compass แล้วกด create database 
                     3.2  เปิด mongosh จะอยู่ tab ด้านล่างโปรแกรม แล้วลองใช้คำสั่งด้านล่างนี้ดู
      >- &nbsp; อยากดูว่าเรามี Database อะไรอยู่บ้าง &nbsp;:&nbsp; ใช้คำสั่ง ```show dbs``` <br/>
      >
      >- &nbsp; ลองสร้างฐานข้อมูล (database) ชื่อ mydb &nbsp;:&nbsp; ใช้คำสั่ง ```use mydb``` <br/>
      >
      >- &nbsp; ลองสร้าง collection ชื่อ user เก็บไว้ในฐานข้อมูลที่ชื่อ customers &nbsp;:&nbsp; ต้องเข้าไปที่ฐานข้อมูล customers ก่อน ```use customers``` &nbsp;&nbsp; แล้วใช้คำสั่ง ```db.createCollection("user")``` ในการสร้าง collection ชื่อ user <br/>
      >
      >- &nbsp; clear terminal &nbsp;:&nbsp; ใช้คำสั่ง ```cls``` หรือกด ```ctrl + l``` เหมือนตอนใช้ cmd เลย เราจึงควรรู้ bash script หรือก็คือคำสั่งที่ใช้กับ cmd เอาไว้บ้าง มีประโยชน์ในการทำงาน <br/>
      >
      >- &nbsp; ลองเพิ่มข้อมูลใน collection user &nbsp;:&nbsp; มี 2 แบบ หนึ่งคือคำสั่งแบบเพิ่ม document เดียว ```db.user.insertOne({document/JSON})``` และ สองคือคำสั่งแบบเพิ่มหลายๆ document ```db.user.insertMany([{document_1} , {document_2}])``` 1 document/JSON = 1 row = ข้อมูลของ 1 user <br/>
      >
      ตัวอย่างการ insert ข้อมูลแบบ insertOne <br/>
      
      ![ตัวอย่างการinsertข้อมูลลงmongodb](https://github.com/Arisa-Kaewsuan/SQL_Exercises/assets/87797742/0c1eae66-194b-4074-a57f-ca61018b91d2)<br/>

      ตัวอย่างการ insert ข้อมูลแบบ insertMany <br/>

      ![ตัวอย่างการinsertหลายrow](https://github.com/Arisa-Kaewsuan/SQL_Exercises/assets/87797742/78d01ffe-c3e3-4594-832e-531f9eec2e49)<br/>

      จากรูปข้างล่างจะเห็นว่าเราสามารถดูข้อมูลที่เรา insert เข้าไปแบบตารางได้ และยังสามารถใช้ GUI ในการ insert ได้อีกด้วย <br/>

      ![mongdb_GUI](https://github.com/Arisa-Kaewsuan/SQL_Exercises/assets/87797742/6dd99416-6459-4170-8099-74365662c2ef)<br/>
      
      >- &nbsp; ลองลบฐานข้อมูลที่ชื่อ mydb &nbsp;:&nbsp; ใช้คำสั่ง ```db.dropDatabase("mydb")``` <br/>
      >
      >- &nbsp; ลองลบ collection ที่ชื่อ user &nbsp;:&nbsp; ใช้คำสั่ง ```db.user.drop()``` <br/>
      >
      >- &nbsp; ลองเปลี่ยนชื่อ collection จาก user เป็น employee &nbsp;:&nbsp; ใช้คำสั่ง ```db.user.renameCollection("employee")``` <br/>

            ตอนนี้เรามี Database แล้วก็สามารถ Query(CRUD) ข้อมูลดูได้ ด้วยคำสั่งต่อไปนี้
     
            1.  Select ข้อมูลมาดู : ใช้คำสั่ง find()

      ตัวอย่างการ การใช้กลุ่มคำสั่ง mongoDB สำหรับ [Query](https://www.mongodb.com/docs/mongodb-shell/crud/read/) ข้อมูล <br/>
      >- &nbsp;  อยากทราบว่ามีพนักงานกี่คนที่ได้เงินเดือน 15000 บาท &nbsp;:&nbsp;
      >  วิเคราะห์โจทย์แล้วได้ว่าให้ดูใน collection employees ที่ฟิลด์ salary = 15000 ใช้คำสั่ง ```db.employees.find({salary:15000})``` <br/>
   <br/>
