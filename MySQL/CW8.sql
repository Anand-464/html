CREATE DATABASE GroceryShop;
USE GroceryShop;
CREATE TABLE products(product_id INT(10) AUTO_INCREMENT PRIMARY KEY, product_name VARCHAR(20), price INT(20));

ALTER TABLE products ADD category VARCHAR(35);

TRUNCATE TABLE products;

DROP DATABASE GroceryShop;