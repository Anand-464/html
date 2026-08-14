CREATE TABLE `cw3`.`products` (`id` INT(10) NOT NULL AUTO_INCREMENT , `name` VARCHAR(35) NOT NULL , `category` VARCHAR(20) NOT NULL , `price` INT(20) NOT NULL , `in_stock` VARCHAR(35) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;
INSERT INTO products(name,category,price,in_stock) 
VALUES('Laptop','Electronics',6000,'No'), 
('Induction cooker','Kitchen appliances',1500,'Yes'),
('Shirts','Fashion',400,'Yes'), 
('Watch','Fashion',2000,'No'), 
('Pliers','Tools',870,'Yes');

SELECT DISTINCT category FROM products;

SELECT * FROM products WHERE(in_stock='Yes' AND price<500);

SELECT * FROM products WHERE(in_stock='No' AND price>1000);

SELECT * FROM products ORDER BY price DESC;

SELECT name,price FROM products ORDER BY price DESC;

ALTER TABLE `products` ADD `price_with_tax` INT NOT NULL AFTER `in_stock`;

SELECT name,price*1.18 AS price_with_tax FROM products;