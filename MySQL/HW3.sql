CREATE TABLE `hw3`.`books` (`id` INT(10) NOT NULL AUTO_INCREMENT , `title` VARCHAR(35) NOT NULL , `author` VARCHAR(20) NOT NULL , `price` INT(20) NOT NULL , `stock_status` VARCHAR(35) NOT NULL , `genre` VARCHAR(20) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

INSERT INTO books(title,author,price,stock_status,genre) 
VALUES('The Great Gatsby','F Scott Fitzgerald', 350,'In stock','Fiction'),
('A Brief History of Time','Stephen Hawking',950,'In stock','Science'), 
('The Da Vinci Code','Dan Brown',500,'Out of stock','Fiction'), 
('Sapiens','Yuval Noah Harari',800,'Out of stock','History'), 
('Harry potter','J K Rowling',750,'In stock','Fantasy'), 
('The Hobbit','J R R Tolkien',300,'In stock','Fantasy');

SELECT DISTINCT genre FROM books;

SELECT * FROM books WHERE stock_status='In stock' AND price<400;

SELECT * FROM books WHERE stock_status OR price>700;

ALTER TABLE `books` ADD `price_with_tax` INT(10) NOT NULL AFTER `genre`;

SELECT title,price*1.10 AS price_with_tax FROM books;

SELECT title,price,stock_status FROM books ORDER BY price DESC;