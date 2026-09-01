CREATE DATABASE cw10;
USE cw10;
CREATE TABLE students(student_id INT(10) PRIMARY KEY AUTO_INCREMENT, name VARCHAR(35), email VARCHAR(35), UNIQUE(email));

CREATE TABLE courses(course_id INT(10) PRIMARY KEY AUTO_INCREMENT, course_name VARCHAR(35));

CREATE TABLE enrollments(student_id INT, course_id INT, FOREIGN KEY(student_id) REFERENCES students(student_id), FOREIGN KEY(course_id) REFERENCES courses(course_id), PRIMARY KEY(student_id,course_id));