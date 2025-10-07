CREATE DATABASE SchoolLibrary;
USE SchoolLibrary;
CREATE TABLE category(
    category_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    category_name varchar(255) NOT NULL);
CREATE TABLE books(
    book_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name varchar(255) NOT NULL,
    category_id int,
    FOREIGN KEY (category_id) REFERENCES category(category_id));
CREATE INDEX indx_book_name ON books(name);
SHOW INDEXES FROM books;