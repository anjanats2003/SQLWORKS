INSERT INTO book
VALUES ('1','The Silent Patient','Alex Michaelides','Thriller','399.00','1200'),('2','Atomic Habits','James Clear','Self-help','499.00','2000'),('3','The Psychology of Money','Morgan Housel','Finance','350.00','1800');
INSERT INTO bestsellers
VALUES ('4','Ikigai','Francesc Miralles','Philosophy','300.00','2500'),('5','Think Like a Monk','Jay Shetty','Self-help','450.00','2200');
SELECT Title,Author FROM bestsellers
UNION
SELECT Title,Author FROM book;
SELECT AVG(price) AS Average_price FROM book;
SELECT COUNT(*) AS No_of_books FROM book;
SELECT Title AS 'Book Title' , Author AS 'Written By'
FROM book;