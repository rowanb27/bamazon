DROP DATABASE IF EXISTS bamazon_DB;

CREATE DATABASE bamazon_DB;

USE bamazon_DB;

CREATE TABLE products(
    item_ID INT AUTO_INCREMENT PRIMARY KEY,
    product_Name VARCHAR(255) NOT NULL,
    department_Name VARCHAR(100) NOT NULL,
    price DECIMAL (10,2) NOT NULL,
    stock_Quantity INT NOT NULL
);

INSERT INTO products(product_Name, department_Name, price, stock_Quantity)
VALUES ("Shampoo", "Hair Care", 22.00, 20),
       ("Conditioner", "Hair Care", 20.00, 14),
       ("Tomato", "Produce", 1.99, 56),
       ("Celery", "Produce", 1.99, 90),
       ("Paper Towels", "Grocery", 3.95, 30),
       ("Orange Juice", "Beverages", 3.19, 120),
       ("Pototo", "Produce", 1.49, 230),
       ("Band-Aid", "First Aid", 2.29, 40),
       ("Crest Toothpaste", "Oral Care", 4.99, 52),
       ("Oral-B Toothbrush", "Oral Care", 5.99, 64),
       ("Toy Baseball Bat", "Toy", 9.59, 80),
       ("Baseball Mitt", "Sporting Goods", 7.99, 60),
       ("Soccer Ball)", "Sporting Goods", 24.99, 48),
       ("Tennis Ball", "Sporting Goods", 5.99, 36);
    
