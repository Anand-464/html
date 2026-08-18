CREATE DATABASE hw5;
USE hw5;
CREATE TABLE book(id INT(10) AUTO_INCREMENT PRIMARY KEY, title VARCHAR(35), author VARCHAR(35), price INT(10), stock INT(10));

MariaDB [hw5]> INSERT INTO book(id,title,author,price,stock) VALUES(1, 'The Alchemist', 'Paulo Coelho', 350, 50),
(2, 'Atomic Habits', 'James Clear', 450, 40),
(3, 'The Psychology of Money', 'Morgan Housel', 400, 30),
(4, 'Ikigai', 'Francesc Miralles', 300, 60),
(5, 'Deep Work', 'Cal Newport', 500, 20);

SELECT * FROM book WHERE price<450 AND stock>30;

UPDATE book SET stock = 45,price = 420 WHERE title = 'Deep Work';

DELETE FROM book WHERE title = 'Ikigai';

SELECT AVG(price) FROM book;

SELECT COUNT(*) FROM book;

SELECT * FROM book ORDER BY PRICE DESC LIMIT 3;