CREATE DATABASE University;
use University;
CREATE TABLE Students(
	Student_id INT PRIMARY KEY,
    Student_Name VARCHAR(40),
    Department_Id INT,
    FOREIGN KEY(Department_Id) REFERENCES Departments(Department_Id)	
);

CREATE TABLE Departments(
	Department_id int PRIMARY KEY,
    Department_Name VARCHAR(40)
);

ALTER TABLE students
ADD COLUMN Email VARCHAR(50);

ALTER TABLE students
RENAME COLUMN STUDENT_INFO TO STUDENT_NAMES;

RENAME TABLE students TO student_Info;
select * from student_Info;
truncate table Student_Info;
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id)
    REFERENCES departments(department_id)
);
RENAME TABLE student_info TO students;
ALTER TABLE students
ADD course_id INT;
drop table courses;

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id)
    REFERENCES departments(department_id)
);

select * 
from students
order by student_Id;
INSERT INTO departments (department_id, department_name)
VALUES
(101, 'Computer Science'),
(102, 'Electronics'),
(103, 'Mechanical'),
(104, 'Civil'),
(105, 'Information Technology');

INSERT INTO students
(student_id, Student_Names, department_id, email)
VALUES
(1, 'Vishnu', 101, 'vishnu@gmail.com'),
(2, 'Rahul', 102, 'rahul@gmail.com'),
(3, 'Anjali', 103, 'anjali@gmail.com'),
(4, 'Priya', 104, 'priya@gmail.com'),
(5, 'Kiran', 105, 'kiran@gmail.com');

ALTER TABLE students
ADD COLUMN Course_Id INT;

UPDATE students
set course_Id = 501
WHERE STUDENT_ID = 1; 
UPDATE students
set course_Id = 502
WHERE STUDENT_ID = 2; 
UPDATE students
set course_Id = 503
WHERE STUDENT_ID = 3; 
UPDATE students
set course_Id = 504
WHERE STUDENT_ID = 4;
UPDATE students
set course_Id = 505
WHERE STUDENT_ID = 5; 

ALTER TABLE students
DROP COLUMN COURSES_ID; 

select * from departments;

select * from students;

CREATE USER 'student_user'@'localhost'
IDENTIFIED BY 'student123';
GRANT SELECT, INSERT
ON university.students
TO 'student_user'@'localhost';
FLUSH PRIVILEGES;
SHOW GRANTS FOR 'student_user'@'localhost';