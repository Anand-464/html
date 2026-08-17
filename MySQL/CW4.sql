CREATE TABLE `cw4`.`online_library` (`book_id` INT(10) NOT NULL AUTO_INCREMENT , `title` VARCHAR(35) NOT NULL , `author` VARCHAR(20) NOT NULL , `price` INT(20) NOT NULL , `stock` INT(35) NOT NULL , PRIMARY KEY (`book_id`)) ENGINE = InnoDB;

INSERT INTO online_library(book_id,title,author,price,stock) 
VALUES(1,'Learn SQL','John smith',400,10),
(2,'Mastering Python','Jane Doe',600,5),
(3,'HTML & CSS basics','Alan Webb',300,8);

UPDATE online_library
SET price = price+50,stock = 12 WHERE title = 'learn SQL';

UPDATE online_library
SET stock = stock-2 WHERE price>500;

DELETE FROM online_library WHERE book_id = 3;