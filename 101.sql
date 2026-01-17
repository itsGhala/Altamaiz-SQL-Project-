create database if not exists altamaiz;
use altamaiz;
drop table if exists student; -- احذف جدول الطالب لو كان موجود
drop table if exists teacher; -- احذف جدول المعلم لو كان موجود 
drop table if exists course; -- احذف جدول المواد لو كان موجود
create table student(/*هنا انشاء جدول الطالب يتضمن: رقم الطالب واسمه وتاريخ ميلاده
وجنسه وتاريخ الالتحاق، وايميله، ومستواه ،مساره والمعدل التراكمي
*/
student_id int primary key, -- هنا حددت pk يكون رقم الطالب 
student_name varchar (50), -- أقصى طول للاسم 50 حرف
student_birth DATE, -- لانه تاريخ حددت نوعه date 
student_gender char (2),
student_enr DATE,
student_email varchar (50),
student_level int,
student_path varchar (10),
student_GPA DECIMAL -- حددت نوعه DECIMAL في حال كان المعدل فيه كسور 
);
create table teacher ( -- هنا انشاء جدول المعلم
teacher_id int primary key, -- Pk رقم المعلم
teacher_name varchar (50),
teacher_birth varchar (20),
teacher_gender varchar (5),
teacher_email varchar (50),
office_number varchar (5) 
);
create table course ( -- انشاء جدول المواد
course_id int primary key auto_increment, -- pk يكون رقم الماده ويتزايد تلقائي 
course_name varchar (20)
);
insert into student (student_id,student_name,student_birth,student_gender,student_enr,student_email,student_level,student_path ,student_GPA) values -- هنا بديت اعبي جدول الطالب بالبيانات المطلوبه
(110754,'Ghala','2002-05-09','F','2020-02-01','Ghala@gmail.com',6,'scientific',95),
(537972,'Reem','1998-09-03','F','2017-09-02','Reem@gmail.com',6,'literary',89),
(298589,'Sara','1999-03-08','F','2023-07-04','Sara@gmail.com',3,'scientific',100),
(116790,'Norah','1994-05-05','F','2018-09-03','Norah@gmail.com',5,'literary',100),
(268648,'Rashed','2006-06-06','M','2024-01-03','Ra@gmail.com',1,'scientific',88),
(111113,'Samar','1990-12-04','F','2020-08-04','Samar@gmail.com',5,'scientific',77),
(227798,'Mohammed','1998-06-02','F','2025-07-02','Moha@gmail.com',6,'scientific',99),
(534939,'Ahmed','1997-09-03','M','2021-11-03','Ahmed@gmail.com',4,'literary',83),
(432979,'Salman','1999-02-02','M','2022-09-04','Salm@gmail.com',6,'literary',88),
(133388,'Turky','1990-07-01','M','2025-05-01','Tu@gmail.com',1,'scientific',92),
(472298,'Hoor','2010-09-02','F','2024-07-07','Hoor@gmail.com',2,'scientific',90),
(279797,'Manar','2002-04-03','F','2023-05-14','Manar@gmail.com',3,'scientific',98),
(155773,'Rawan','1989-02-02','F','2021-10-18','Ra@gmail.com',4,'scientific',95),
(674848,'Badeyh','2002-09-03','F','2020-08-21','Bad@gmail.com',5,'literary',94),
(747428,'Hessah','2009-08-03','F','2023-09-05','Hes@gmail.com',3,'literary',90),
(472744,'Samerah','2011-06-01','F','2025-06-06','Sam@gmail.com',2,'literary',96),
(98761,'Maha','2004-03-04','F','2025-04-13','Maha@gmail.com',6,'literary',77),
(456809,'Fatemah','2012-06-01','F','2020-09-19','Fato@gmail.com',2,'scientific',100),
(123465,'Khaled','2003-08-02','M','2020-07-20','Kh@gmail.com',6,'scientific',91),
(838374,'Fahad','1986-09-30','M','2024-04-04','Fah@gmail.com',2,'scientific',77),
(148798,'Naif','1999-09-02','M','2015-02-22','Naf@gmail.com',6,'scientific',89),
(351479,'Ghazie','1993-07-01','M','2023-01-25','Gh@gmail.com',2,'literary',91),
(112406,'Teif','2004-09-03','F','2020-04-30','T@gmail.com',6,'literary',98),
(555523,'Maryam','2005-08-02','F','2025-08-20','Ma@gmail.com',2,'scientific',100),
(138493,'Zainah','2006-04-04','F','2024-09-06','Zan@gmail.com',6,'scientific',99),
(234745,'Malak','2027-06-19','F','2020-07-07','Malak@gmail.com',5,'scientific',98),
(124968,'Layla','2029-04-02','F','2025-11-20','Lay@gmail.com',4,'scientific',97),
(258793,'Taliay','2030-05-21','F','2023-12-30','Ta@gmail.com',3,'scientific',96),
(258685,'Tala','2018-08-02','F','2024-09-19','Tala@gmail.com',2,'scientific',95),
(138573,'Yara','2032-09-05','F','2020-03-30','Yara@gmail.com',1,'scientific',94);
insert into teacher(teacher_id,teacher_name,teacher_birth,teacher_gender,teacher_email,office_number) values -- ونفس الشي لجدول المعلم حطيت البيانات 
('4692','Ali','2-9-1978','M','Ali@gmail.com','102'),
('2388','Sara','12-6-1985','F','Sarra@gmail.com','103'),
('1920','Mona','30-7-1997','F','Mo@gmail.com','104'),
('1379','Maram','20-2-2000','F','maraam@gmail.com','101'),
('1998','Sarab','24-6-1995','F','Sarabb@gmail.com','105'),
('1333','Fahad','5-8-1980','M','Fode@gmail.com','106'),
('2228','Mohammad','24-6-1995','M','Moh@gmail.com','107'),
('1238','Bander','12-9-1985','M','Ban@gmail.com','108'),
('1323','Norah','1-10-1985','F','Noo@gmail.com','109'),
('1339','Noor','12-6-1988','F','Noor@gmail.com','110'); 
insert into course (course_name) values -- جدول المواد اضفت فيه المواد الي بياخذها الطلاب هاذا الفصل 
('Math'),('Physics'),('Chemistry'),('Biology'),('Sport'),('History');
select * from student; -- يعرض لي جدول الطالب 
show tables; -- يعرض الجداول الموجوده في قاعده البيانات عندي 
DESCRIBE student;-- يعطيني تفاصيل اعمدة الجدول الي محددته
USE altamaiz; -- استخدم قاعدة البيانات ذي altamaiz
select * from student order by student_name ASC; -- ورتب لي اسماء الطلاب تصاعدي A-Z 
ALTER TABLE student
CHANGE student_name full_name VARCHAR(50); -- بدلت اسم العامود من student_name الى name
select * from student;
update student -- بسوي تغيير على ايميل احد الطلاب 
set student_email = 'ra@yahoo.com'
where student_id = 268648; -- هنا حددت فقط الطالب الي رقمه 268648
SELECT * FROM student  
WHERE student_id = 268648; -- يعرض لي الطالب الي سويت عليه التغيير فقط مو الجدول كامل
update teacher -- بسوي تغيير جديد على جدول المعلم 
set office_number = '112' -- حددت التغيير الي بسويه بيكون على رقم مكتب المعلم كان ١١٠ وعدلته ل١١٢
where teacher_id = 1339; -- عند المعلم الي رقمه 1339
use altamaiz; 
alter table course -- حددت جدول المواد 
add Time_course DATETIME; -- واضفت له عامود الوقت 
DESCRIBE course;
drop table if exists subject; 
USE altamaiz; -- تحديد قاعدة البيانات 
rename table course to subject; -- تغيير اسم الجدول من course الى subject
show tables;
select * from student;



















