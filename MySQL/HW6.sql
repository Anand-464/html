CREATE DATABASE hw6
USE hw6;
CREATE TABLE movies(id INT(10) AUTO_INCREMENT PRIMARY KEY, title VARCHAR(20), genre VARCHAR(35), release_year INT(10), rating DECIMAL(3,1), box_office INT(20));

INSERT INTO movies(id,title,genre,release_year,rating,box_office) VALUES
(1, 'Inception', 'Sci-Fi', 2010, 8.8, 825),
(2, 'The Dark Knight', 'Action', 2008, 9.0, 1004),
(3, 'Interstellar', 'Sci-Fi', 2014, 8.6, 677),
(4, 'Joker', 'Drama', 2019, 8.4, 1074),
(5, 'Dunkirk', 'War', 2017, 7.9, 527);

SELECT title,box_office AS 'Earning(in Cr.)' FROM movies;
SELECT title AS 'Movie Title',genre AS Category FROM movies;
SELECT id,title,genre,rating AS 'IMDb Score' FROM movies WHERE genre IN('Sci-Fi','Action');
SELECT title,release_year AS 'Release' FROM movies WHERE release_year BETWEEN 2008 AND 2015;
SELECT COUNT(*) AS 'High Rated Movies' FROM movies WHERE rating>8.5;