create database student_data;
use student_data;
CREATE TABLE student_data (
    student_id INT,
    student_name VARCHAR(50),
    attendance FLOAT,
    percentage DOUBLE,
    grade CHAR(1),
    fee DECIMAL(8,2),
    address TEXT
);

INSERT INTO student_data VALUES
(1, 'Vishnu', 85.5, 89.75, 'A', 25000.50, 'Hyderabad'),
(2, 'Kaveri', 78.0, 76.25, 'B', 22000.75, 'Warangal'),
(3, 'Rahul', 90.5, 91.80, 'A', 26000.00, 'Mulugu'),
(4, 'Sneha', 67.0, 68.40, 'C', 21000.25, 'Khammam'),
(5, 'Arjun', 88.5, 84.90, 'B', 24000.60, 'Nalgonda'),
(6, 'Priya', 92.0, 95.50, 'A', 28000.80, 'Adilabad'),
(7, 'Teja', 75.5, 72.30, 'B', 23000.40, 'Karimnagar'),
(8, 'Divya', 81.0, 79.60, 'B', 22500.90, 'Jangaon'),
(9, 'Manoj', 69.5, 65.20, 'C', 20000.00, 'Hanamkonda'),
(10, 'Pooja', 95.0, 97.10, 'A', 30000.50, 'Mahabubabad');

select * from student_data;
desc student_data;
