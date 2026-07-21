create database studentsAss;
use studentsAss;
CREATE TABLE StudentAss (
    student_id INT,
    student_name VARCHAR(50),
    gender ENUM('Male','Female','Other'),
    percentage DECIMAL(5,2),
    marks FLOAT,
    cgpa DOUBLE,
    admission_date DATE,
    login_time TIME,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    is_passed BOOLEAN,
    skills SET('Java','Python','SQL','HTML','CSS')
);
INSERT INTO StudentAss VALUES
(1,'Vishnu','Male',89.50,450.5,8.5,'2024-06-01','09:30:00',CURRENT_TIMESTAMP,TRUE,'Java,SQL'),
(2,'Kaveri','Female',91.20,470.0,9.1,'2024-06-02','10:00:00',null,TRUE,'Python,HTML'),
(3,'Rahul','Male',75.40,390.2,7.4,'2024-06-03','09:15:00',default,TRUE,'Java,CSS'),
(4,'Sneha','Female',68.80,340.6,6.8,'2024-06-04','08:45:00',CURRENT_TIMESTAMP,FALSE,'SQL,HTML'),
(5,'Arjun','Male',82.60,420.3,8.0,'2024-06-05','09:20:00',CURRENT_TIMESTAMP,TRUE,'Java,Python'),
(6,'Priya','Female',95.70,490.5,9.8,'2024-06-06','10:10:00',CURRENT_TIMESTAMP,TRUE,'Python,SQL'),
(7,'Teja','Male',79.30,400.8,7.9,'2024-06-07','08:30:00',CURRENT_TIMESTAMP,TRUE,'HTML,CSS'),
(8,'Divya','Female',88.40,445.1,8.7,'2024-06-08','09:40:00',CURRENT_TIMESTAMP,TRUE,'Java,Python,SQL'),
(9,'Manoj','Male',64.50,320.0,6.5,'2024-06-09','10:20:00',CURRENT_TIMESTAMP,FALSE,'CSS'),
(10,'Pooja','Female',92.80,480.4,9.3,'2024-06-10','09:50:00',CURRENT_TIMESTAMP,TRUE,'Java,HTML');
select * from studentAss;

CREATE TABLE StudentDetails (
    detail_id BIGINT,
    student_id INT,
    father_name VARCHAR(50),
    mother_name VARCHAR(50),
    address TEXT,
    phone_number long,
    city VARCHAR(30),
    pincode INT,
    birth_date DATE,
    last_updated DATETIME,
    scholarship BOOLEAN,
    blood_group ENUM('A+','B+','O+','AB+','A-','B-','O-','AB-'),
    hobbies SET('Reading','Gaming','Sports','Music','Travel')
);
INSERT INTO StudentDetails VALUES
(101,1,'vishnu','Lakshmi','Hyderabad','9876543210','Hyderabad',500001,'2004-01-10','2026-06-25 10:00:00',TRUE,'A+','Reading,Music'),
(102,2,'Svardhan','Anitha','Warangal','9876543211','Warangal',506002,'2003-02-11','2026-06-25 10:10:00',TRUE,'B+','Gaming,Travel'),
(103,3,'Kiran','Padma','Mulugu','9876543212','Mulugu',506343,'2005-03-12','2026-06-25 10:20:00',FALSE,'O+','Sports'),
(104,4,'Rajesh','Sujatha','Khammam','9876543213','Khammam',507001,'2002-04-13','2026-06-25 10:30:00',TRUE,'AB+','Reading,Gaming'),
(105,5,'Prasad','Latha','Nalgonda','9876543214','Nalgonda',508001,'2004-05-14','2026-06-25 10:40:00',FALSE,'A-','Music'),
(106,6,'Mohan','Rani','Adilabad','9876543215','Adilabad',504001,'2003-06-15','2026-06-25 10:50:00',TRUE,'B-','Travel,Sports'),
(107,7,'Venkat','Swapna','Karimnagar','9876543216','Karimnagar',505001,'2001-07-16','2026-06-25 11:00:00',TRUE,'O-','Gaming,Music'),
(108,8,'Naresh','Sita','Jangaon','9876543217','Jangaon',506167,'2004-08-17','2026-06-25 11:10:00',FALSE,'AB-','Reading'),
(109,9,'Ravi','Uma','Hanamkonda','9876543218','Hanamkonda',506370,'2005-09-18','2026-06-25 11:20:00',TRUE,'A+','Sports,Travel'),
(110,10,'Krishna','Radha','Mahabubabad','9876543219','Mahabubabad',506101,'2002-10-19','2026-06-25 11:30:00',TRUE,'B+','Music,Reading');
select * from studentDetails;
RENAME table StudentAss to stdinformation;

alter table stdinformation add column nickname varchar(30);
desc studentAss;
drop table stdinformation;
