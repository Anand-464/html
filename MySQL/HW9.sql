CREATE DATABASE hw9;
USE hw9;
CREATE TABLE employees(id INT(10) AUTO_INCREMENT PRIMARY KEY, name VARCHAR(35));
INSERT INTO employees(id,name) VALUES
(1,'Anjali'),
(2,'Rohan'),
(3,'Meena');

CREATE TABLE departments(emp_id INT(10) AUTO_INCREMENT PRIMARY KEY, department_name VARCHAR(35));
INSERT INTO departments(emp_id,department_name) VALUES
(1,'HR'),
(2,'IT'),
(4,'Finance');

SELECT employees.name, departments.department_name FROM departments RIGHT JOIN employees ON employees.id = departments.emp_id;

SELECT employees.name, departments.department_name FROM employees INNER JOIN departments ON employees.id= departments.emp_id;

SELECT departments.department_name, employees.name FROM employees RIGHT JOIN departments ON employees.id= departments.emp_id;