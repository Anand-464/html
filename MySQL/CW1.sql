CREATE TABLE `cw1`.`students` (`student_id` INT(10) NOT NULL AUTO_INCREMENT , `student_name` VARCHAR(20) NOT NULL , `age` INT(3) NOT NULL , `department` VARCHAR(35) NOT NULL , `grade` INT(10) NOT NULL , PRIMARY KEY (`student_id`)) ENGINE = InnoDB;

INSERT INTO students(student_id,student_name,age,department,grade) 
VALUES('1','JOHN','22','ELECTRONICS','70'), 
('2','PETER','19','COMPUTER SCIENCE','90'), 
('3','ABHISHEK','20','PHYSICS','80'), 
('4','AKASH','23','COMPUTER SCIENCE','60');

SELECT * FROM students WHERE age>20;
SELECT * FROM students WHERE department='COMPUTER SCIENCE';
SELECT * FROM students WHERE department='PHYSICS';
SELECT * FROM students WHERE grade='90';
SELECT * FROM students WHERE grade BETWEEN '70' AND '90';