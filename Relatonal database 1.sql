CREATE TABLE Books (
BookID SERIAL PRIMARY KEY,
Title VARCHAR NOT NULL,
Author VARCHAR,
Genre VARCHAR
)

INSERT INTO Books (BookID, Title, Author, Genre) VALUES
(1, '1984', 'George Orwell', 'Dystopian'),
(2, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction'),
(3, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classic'),
(4, 'Rich Dad And Poor Dad', 'Robert.T.Kiyosaki', 'Finance')

SELECT * FROM Books

CREATE TABLE Borrowers (
BorrowerID SERIAL PRIMARY KEY,
Name VARCHAR NOT NULL,
ContactInfo VARCHAR,
BookID INT,
CONSTRAINT fk_book FOREIGN KEY (BookID) REFERENCES Books(BookID)
)

INSERT INTO Borrowers (Name, ContactInfo, BookID) VALUES
('Prathmesh', 'prathu@gmail.com', 1),
('Naman', 'naman@gmail.com', 2),
('Piyush', 'piyush@gmail.com', 3),
('Nakul', 'nakul@gmail.com', 4)

SELECT * FROM Borrowers