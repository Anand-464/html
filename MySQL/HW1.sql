CREATE TABLE `hw1`.`library` (`id` INT(10) NOT NULL AUTO_INCREMENT , `title` VARCHAR(35) NOT NULL , `author` VARCHAR(20) NOT NULL , `price` INT(20) NOT NULL , `genre` VARCHAR(35) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

INSERT INTO library(title,author,price,genre) 
VALUES('The Great Gatsby','F. Scott Fitzgerald', 450,'Fiction'),
('A Brief History of Time','Stephen Hawking',550,'Science'), 
('The Da Vinci Code','Dan Brown',400,'Fiction'), 
('Sapiens','Yuval Noah Harari',600,'History'), 
('The Hobbit','J R R Tolkien',480,'Fantasy');

SELECT * FROM library WHERE price >400;
SELECT * FROM library WHERE genre IN('History','Science','Fiction');
SELECT * FROM library WHERE title ='The Great Gatsby';
SELECT * FROM library WHERE author <>'Dan Brown';
SELECT * FROM `library`