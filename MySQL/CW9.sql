CREATE DATABASE cw9;
USE cw9;
CREATE TABLE book(book_id INT(10) AUTO_INCREMENT PRIMARY KEY, title VARCHAR(35));
INSERT INTO book(book_id,title) VALUES
(1,'The Alchemist'),
(2, 'The Power of Now'),
(3,'Think and Grow Rich'),
(4, 'Clean Code');

CREATE TABLE borrowers(borrowers_id INT(10) AUTO_INCREMENT PRIMARY KEY, name VARCHAR(35), book_id INT(10));
INSERT INTO borrowers(borrowers_id,name,book_id) VALUES
(101,'Alice',1),
(102,'Bob',2),
(103,'Charlie',NULL);

SELECT book.title, borrowers.name FROM book LEFT JOIN borrowers ON book.book_id=borrowers.book_id;

SELECT borrowers.name,book.title FROM book RIGHT JOIN borrowers ON book.book_id=borrowers.book_id;

SELECT borrowers.name,book.title FROM book LEFT JOIN borrowers ON book.book_id=borrowers.book_id WHERE borrowers.book_id IS NULL;

SELECT borrowers.name,book.title FROM borrowers LEFT JOIN book ON book.book_id=borrowers.book_id;