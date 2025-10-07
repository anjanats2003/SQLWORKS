CREATE DATABASE Online_bookstore;
USE Online_bookstore;
CREATE TABLE Author(
    author_id int PRIMARY KEY,
    author_name varchar(255) NOT NULL,
    Email varchar(255) UNIQUE NOT NULL);
CREATE TABLE Book(
    Book_id int PRIMARY KEY,
    title varchar(255) NOT NULL,
    author_id int NOT NULL,
    FOREIGN KEY (author_id) REFERENCES Author(author_id));
