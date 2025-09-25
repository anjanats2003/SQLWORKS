CREATE DATABASE Grocery_shop;
USE Grocery_shop;
CREATE TABLE Products(
    product_id INT NOT NULL AUTO_INCREMENT,
    Product_name VARCHAR(50) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (Product_id));
ALTER TABLE products
ADD COLUMN Category VARCHAR(50);
TRUNCATE TABLE products;
DROP DATABASE Grocery_shop;