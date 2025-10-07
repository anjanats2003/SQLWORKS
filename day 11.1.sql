CREATE DATABASE library_management;
USE library_management;
CREATE TABLE author(
    author_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(255) NOT NULL);
CREATE TABLE Books(
    Book_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title varchar(255) NOT NULL,
    author_id int,
    FOREIGN KEY (author_id) REFERENCES author(author_id));
CREATE INDEX indx_author_id ON books(author_id);