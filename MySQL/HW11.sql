CREATE DATABASE hw11;
USE hw11;
CREATE TABLE categories(category_id INT PRIMARY KEY AUTO_INCREMENT, category_name VARCHAR(35));

CREATE TABLE books(book_id INT PRIMARY KEY AUTO_INCREMENT, book_name VARCHAR(35), category_id INT, FOREIGN KEY(category_id) REFERENCES categories(category_id));

CREATE INDEX book_indx ON books(book_name);
SHOW INDEX FROM books;