CREATE DATABASE cw7;
USE cw7;
CREATE TABLE student(id INT(10) AUTO_INCREMENT PRIMARY KEY NOT NULL, name VARCHAR(35) NOT NULL, course VARCHAR(35) NOT NULL, score INT(20) NOT NULL, email VARCHAR(35) NOT NULL, phone VARCHAR(35) NOT NULL, city VARCHAR(35) NOT NULL, bonus_point INT(20));

INSERT INTO student(id,name,course,score,email,phone,city,bonus_point) VALUES
(1, 'Asha', 'Python', 85, 'asha@mail.com', '9876543210', 'Chennai', 5),
(2, 'Ravi', 'Python', 90, 'ravi@mail.com', '9876543211', 'Chennai', NULL),
(3, 'Sneha', 'Java', 78, 'sneha@mail.com', '9876543212', 'Mumbai', NULL),
(4, 'Karan', 'Java', 88, 'karan@mail.com', '9876543213', 'Delhi', 2),
(5, 'Divya', 'Python', 95, 'divya@mail.com', '9876543214', 'Mumbai', 4),
(6, 'Manoj', 'JavaScript', 72, 'manoj@mail.com', '9876543215', 'Delhi', NULL);

SELECT course,COUNT(*) AS total_student FROM student GROUP BY course;
SELECT course, AVG(score) FROM student GROUP BY course HAVING AVG(score)>80;
SELECT name,score FROM student WHERE city = 'Chennai' OR city = 'Mumbai';
SELECT * FROM student WHERE bonus_point IS NULL;
SELECT name FROM student WHERE city = 'Chennai' UNION SELECT name FROM student WHERE city='Mumbai';