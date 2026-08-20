CREATE DATABSE hw7;
USE hw7;
CREATE TABLE users(id INT(10) AUTO_INCREMENT PRIMARY KEY, name VARCHAR(35), city VARCHAR(35), score INT(20), bonus INT(20), challenge VARCHAR(35));

INSERT INTO users(id,name,city,score,bonus,challenge) VALUES
(1, 'Raj', 'Chennai', 88, 5, 'Fitness'),
(2, 'Anu', 'Mumbai', 91, NULL, 'Diet'),
(3, 'Ravi', 'Chennai', 78, 3, 'Fitness'),
(4, 'Meena', 'Delhi', 82, NULL, 'Diet'),
(5, 'Farah', 'Mumbai', 95, 4, 'Fitness'),
(6, 'Kiran', 'Pune', 70, NULL, 'Yoga'),
(7, 'Latha', 'Pune', 87, NULL, 'Fitness');

SELECT * FROM users WHERE score>(SELECT AVG(score) FROM users);
SELECT * FROM users WHERE challenge =(SELECT challenge FROM users WHERE name='Farah');