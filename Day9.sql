CREATE DATABASE Library;
USE Library;
CREATE TABLE Books(
    Book_id int NOT NULL AUTO_INCREMENT,
    title varchar(255) NOT NULL,
    PRIMARY KEY(Book_id));
CREATE TABLE Borrowers(
    borrower_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name varchar(255) NOT NULL,
    Book_id int,
    FOREIGN KEY (Book_id) REFERENCES Books(Book_id));
INSERT INTO books(Book_id,title)
VALUES(1,'The Alchemist'),(2,'The Power Of Now'),(3,'Think And Grow Rich'),(4,'Clean Code');
INSERT INTO borrowers(borrower_id,name,Book_id)
VALUES(101, 'Alice', 1),(102, 'Bob', 2),(103, 'Charlie', NULL);
SELECT books.Book_id,books.title,borrowers.name AS borrowed_by
FROM books
LEFT JOIN borrowers ON books.Book_id=borrowers.Book_id;
SELECT borrowers.borrower_id,borrowers.name,books.title AS borrowed_book
FROM borrowers
LEFT JOIN books ON borrowers.Book_id=books.Book_id;
SELECT books.Book_id,books.title
FROM books
LEFT JOIN borrowers ON books.Book_id=borrowers.Book_id
WHERE borrowers.Book_id IS NULL;
SELECT borrowers.borrower_id,borrowers.name,books.title AS borrowed_book
FROM borrowers
LEFT JOIN books ON borrowers.Book_id=books.Book_id;