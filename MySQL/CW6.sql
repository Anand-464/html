CREATE DATABASE cw6
USE cw6
CREATE TABLE bookss(id INT(10) AUTO_INCREMENT PRIMARY KEY, title VARCHAR(35), author VARCHAR(35), genre VARCHAR(35), price DECIMAL(20), copies_sold INT(10));

CREATE TABLE bestsellers(id INT(10) AUTO_INCREMENT PRIMARY KEY, title VARCHAR(35), author VARCHAR(35), genre VARCHAR(35), price DECIMAL(20), copies_sold INT(10));

INSERT INTO bookss(id,title,author,genre,price,copies_sold) VALUES
(1, 'The Silent Patient', 'Alex Michaelides', 'Thriller', 399.00, 1200),
(2, 'Atomic Habits', 'James Clear', 'Self-help', 499.00, 2000),
(3, 'The Psychology of Money', 'Morgan Housel', 'Finance', 350.00, 1800);

INSERT INTO bestsellers(id,title,author,genre,price,copies_sold) VALUES
(4, 'Ikigai', 'Francesc Miralles', 'Philosophy', 300.00, 2500),
(5, 'Think Like a Monk', 'Jay Shetty', 'Self-help', 450.00, 2200);

SELECT title,author FROM bookss UNION SELECT title,author FROM bestsellers;
SELECT * FROM bookss WHERE price>400;
SELECT AVG(price) FROM bookss;
SELECT COUNT(*) FROM bookss;
SELECT title AS 'Book Title',author AS 'Written By' FROM bookss;