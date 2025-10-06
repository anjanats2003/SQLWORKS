CREATE DATABASE BookStoreDB;
USE BookStoreDB;
CREATE TABLE AUTHOR(Author_id INT NOT NULL AUTO_INCREMENT,
                    Name VARCHAR(50) NOT NULL,
                    Country VARCHAR(50) NOT NULL,
                    PRIMARY KEY(Author_id));
