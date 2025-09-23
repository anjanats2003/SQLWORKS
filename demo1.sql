INSERT INTO books
VALUES ('1','The Alchemist','Paulo Coelho','350','50'),('2','Atomic Habits','James Clear','450','40'),('3','The Psychology of Money','Morgan Housel','400','30'),('4','Ikigai','Francesc Miralles','300','60'),('5','Deep Work','Cal Newport','500','20');
SELECT * FROM books

WHERE (Price <= 350) AND (Stock >= 30);
UPDATE books
SET Stock=45,
	Price=420
WHERE Title='Deep Work';