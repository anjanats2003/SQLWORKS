CREATE DATABASE TrainingInstituteDB;
USE TrainingInstituteDB;
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL
);
CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
INSERT INTO students (student_id, name, email) 
VALUES(1, 'Aisha', 'aisha@gmail.com'),
(2, 'Rahul', 'rahul@gmail.com'),
(3, 'Meera', 'meera@gmail.com');
INSERT INTO courses (course_id, course_name) 
VALUES(101, 'Web Development'),
(102, 'Python Programming'),
(103, 'Data Science');
INSERT INTO enrollments (student_id, course_id) 
VALUES(1, 101),
(2, 102),
(3, 101),
(3, 103);
SELECT students.name,students.email,courses.course_name
FROM enrollments
JOIN students ON enrollments.student_id=students.student_id
JOIN courses ON enrollments.course_id=courses.course_id