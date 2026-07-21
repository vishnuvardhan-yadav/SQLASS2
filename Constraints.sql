CREATE DATABASE CompanyDB;
USE CompanyDB;
CREATE TABLE Department (
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR(50) NOT NULL,
    Department_Code VARCHAR(10) UNIQUE,
    Location VARCHAR(50) DEFAULT 'Hyderabad',
    Budget DECIMAL(12,2) CHECK (Budget > 0)
);
CREATE TABLE Employee (
    Employee_ID INT PRIMARY KEY,
    Employee_Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone_Number BIGINT UNIQUE,
    Salary DECIMAL(10,2) CHECK (Salary >= 20000),
    Age INT CHECK (Age >= 18),
    Department_ID INT,
    Joining_Date DATE DEFAULT (CURRENT_DATE),
    Status VARCHAR(20) DEFAULT 'Active',
    FOREIGN KEY (Department_ID)
    REFERENCES Department(Department_ID)
);
INSERT INTO Department
VALUES
(101,'Computer Science','CSE','Hyderabad',500000),
(102,'Electronics','ECE','Warangal',450000),
(103,'Mechanical','ME','Karimnagar',400000),
(104,'Civil','CE','Nizamabad',350000),
(105,'Information Technology','IT','Hyderabad',600000),
(106,'Artificial Intelligence','AI','Khammam',700000),
(107,'Data Science','DS','Adilabad',650000),
(108,'MBA','MBA','Hyderabad',300000),
(109,'Pharmacy','PH','Nalgonda',250000),
(110,'Biotechnology','BT','Warangal',500000);

INSERT INTO Employee
(Employee_ID, Employee_Name, Email, Phone_Number, Salary, Age, Department_ID)
VALUES
(1,'Vishnu','vishnu@gmail.com',9876543210,50000,22,101),
(2,'Rahul','rahul@gmail.com',9876543211,48000,23,102),
(3,'Anjali','anjali@gmail.com',9876543212,55000,24,103),
(4,'Priya','priya@gmail.com',9876543213,47000,25,104),
(5,'Kiran','kiran@gmail.com',9876543214,52000,26,105),
(6,'Ravi','ravi@gmail.com',9876543215,60000,27,106),
(7,'Sneha','sneha@gmail.com',9876543216,51000,22,107),
(8,'Arjun','arjun@gmail.com',9876543217,58000,24,108),
(9,'Keerthi','keerthi@gmail.com',9876543218,49000,23,109),
(10,'Mahesh','mahesh@gmail.com',9876543219,62000,28,110);
SELECT * FROM Department;
SELECT * FROM Employee;

