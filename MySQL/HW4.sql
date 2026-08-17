CREATE TABLE `hw4`.`students` (`id` INT NOT NULL , `name` INT NOT NULL , `course` INT NOT NULL , `fees_paid` INT NOT NULL , `status` INT NOT NULL ) ENGINE = InnoDB;

INSERT INTO students(id,name,course,fees_paid,status) 
VALUES(1,'Alice','Web development',5000,'Inactive'),
(2,'Bob','DataScience',7000,'Inactive'),
(3,'Charlie','UI/UX Design',4000,'Active');

SELECT*FROM students WHERE fees_paid>5000;

UPDATE students
SET status='Active' WHERE course = 'Web development';

UPDATE students
SET fees_paid = fees_paid+1000 WHERE course = 'DataScience';

UPDATE students
SET status='Inactive',fees_paid = fees_paid-500  WHERE id = 3;

DELETE FROM students WHERE id = 2;

DELETE FROM students WHERE status = 'Inactive';
