CREATE TABLE Customer_M (
CustomerID INT PRIMARY KEY,
FirstName VARCHAR NOT NULL,
LastName VARCHAR NOT NULL,
Email VARCHAR
)

INSERT INTO Customer_M (CustomerID, FirstName, LastName, Email) VALUES
(1, 'Amit', 'Sharma', 'amit.sharma@example.com'),
(2, 'Priya', 'Patel', 'priya.patel@example.com'),
(3, 'Rahul', 'Nair', 'rahul.nair@example.com'),
(4, 'Sneha', 'Reddy', 'sneha.reddy@example.com'),
(5, 'Vikram', 'Singh', 'vikram.singh@example.com')

SELECT * FROM Customer_M

CREATE TABLE Movies (
MovieID INT PRIMARY KEY,
Title VARCHAR NOT NULL,
Genre VARCHAR NOT NULL,
ReleaseYear INT NOT NULL
)

INSERT INTO Movies (MovieID, Title, Genre, ReleaseYear) VALUES
(101, 'Sholay', 'Action', 1975),
(102, 'Dilwale Dulhania Le Jayenge', 'Romance', 1995),
(103, '3 Idiots', 'Comedy', 2009),
(104, 'Baahubali: The Beginning', 'Action', 2015),
(105, 'Gully Boy', 'Drama', 2019)

SELECT * FROM Movies 

CREATE TABLE Rentals (
RentalID INTEGER PRIMARY KEY,
CustomerID INTEGER,
MovieID INTEGER,
RentalDate DATE NOT NULL,
ReturnDate DATE,
FOREIGN KEY (CustomerID) REFERENCES Customer_M(CustomerID),
FOREIGN KEY (MovieID) REFERENCES Movies(MovieID)
)

INSERT INTO Rentals (RentalID, CustomerID, MovieID, RentalDate, ReturnDate) VALUES
(1001, 1, 101, '2025-03-01', '2025-03-05'),
(1002, 2, 102, '2025-03-02', '2025-03-06'),
(1003, 3, 103, '2025-03-03', '2025-03-07'),
(1004, 4, 104, '2025-03-04', '2025-03-08'),
(1005, 5, 105, '2025-03-05', '2025-03-09')

SELECT * FROM Rentals
