CREATE DATABASE exm;
USE exm;

CREATE TABLE employee(id INT(10) PRIMARY KEY AUTO_INCREMENT, name VARCHAR(20), department VARCHAR(35), leaves INT(10));
INSERT INTO employee(name, department, leaves) VALUES('Raju', 'Sales', 1),
('Sangeetha', 'Sales', 3),
('Vinay', 'Operations', 8),
('Abey', 'Packing', 2),
('Thomas', 'Packing', 1),
('Muneer', 'Operations', 7),
('Aparna', 'Sales', 3),
('Abid', 'Operations', 9),
('Fathima', 'Sales', 11),
('Varghese', 'Operations', 14);

CREATE TABLE exam(id INT(10) AUTO_INCREMENT PRIMARY KEY, employee_id INT(10), exam_status VARCHAR(35));
INSERT INTO exam(employee_id, exam_status) VALUES(2, 'Pass'),
(5, 'Fail'),
(1, 'Fail'),
(8, 'Pass'),
(3, 'Pass'),
(1, 'Pass'),
(6, 'Fail'),
(9, 'Pass'),
(10, 'Pass');

SELECT * FROM employee WHERE leaves>5 AND department = 'Sales';
SELECT COUNT(id) FROM employee WHERE department = 'Operations';
SELECT department, COUNT(*) AS emp_count FROM employee GROUP BY department;
SELECT department FROM employee GROUP BY department HAVING SUM(leaves)>10;
SELECT DISTINCT employee.name FROM employee INNER JOIN exam ON employee.id = exam.employee_id WHERE exam.exam_status = 'Pass';
SELECT employee.name FROM employee LEFT JOIN exam ON employee.id = exam.employee_id WHERE exam.exam_status IS NULL;