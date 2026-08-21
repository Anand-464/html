CREATE DATABASE BookStoreDB;
USE BookStoreDB;
CREATE TABLE authors(author_id INT(20) AUTO_INCREMENT PRIMARY KEY, name VARCHAR(35), country VARCHAR(20));

CREATE TABLE books(book_id INT(20) AUTO_INCREMENT PRIMARY KEY, title VARCHAR(35), price INT(20), author_id INT, FOREIGN KEY(author_id) REFERENCES authors(author_id));

ALTER TABLE books ADD published_year INT(35);

DELETE FROM books;

DROP DATABASE BookStoreDB;