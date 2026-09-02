CREATE DATABASE cw11;
USE cw11;
CREATE TABLE authors(author_id INT(10) AUTO_INCREMENT PRIMARY KEY, name VARCHAR(35));

CREATE TABLE books(book_id INT(10) AUTO_INCREMENT PRIMARY KEY, title VARCHAR(35), author_id INT(10), FOREIGN KEY(author_id) REFERENCES authors(author_id));

CREATE INDEX author_indx ON books(author_id);