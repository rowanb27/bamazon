DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE `products` (
	   item_id INT NOT NULL AUTO_INCREMENT
	 , product_name VARCHAR(100)
	 , department_name VARCHAR(100)
	 , price INT NOT NULL
	 , stock_quantity INT NOT NULL
	 , PRIMARY KEY (item_id) 
);

INSERT INTO `products` (product_name, department_name, price, stock_quantity)
VALUES ('iPhone', 'Electronics', 500, 500);

INSERT INTO `products` (product_name, department_name, price, stock_quantity)
VALUES ('Nintendo Gamecube', 'Electronics', 125, 700);

INSERT INTO `products` (product_name, department_name, price, stock_quantity)
VALUES ('Baseball Bat', 'Sporting Goods', 25, 500);

INSERT INTO `products` (product_name, department_name, price, stock_quantity)
VALUES ('Diamond Ring', 'Jewelry', 10000, 10);

INSERT INTO `products` (product_name, department_name, price, stock_quantity)
VALUES ('Barbie Doll', 'Toys', 15, 1500);

INSERT INTO `products` (product_name, department_name, price, stock_quantity)
VALUES ('Gnome', 'Lawn and Garden', 25, 3000);

INSERT INTO `products` (product_name, department_name, price, stock_quantity)
VALUES ('Slinky', 'Toys', 5, 50);

INSERT INTO `products` (product_name, department_name, price, stock_quantity)
VALUES ('Diamond Bracelot', 'Jewelry', 1200, 125);

INSERT INTO `products` (product_name, department_name, price, stock_quantity)
VALUES ('Celery', 'Produce', 2, 250);

INSERT INTO `products` (product_name, department_name, price, stock_quantity)
VALUES ('Tomato', 'Produce', 2, 1200);

SELECT * FROM `products`;
