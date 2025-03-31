CREATE TABLE Customers (
CustomerID int PRIMARY KEY,
Name varchar NOT NULL,
Email varchar  NOT NULL,
PhoneNumber bigint 
)

INSERT INTO Customers (CustomerID, Name, Email, PhoneNumber) VALUES
(1, 'Devid ', 'devid@example.com', 5632587321),
(2, 'Harsh', 'krish@example.com', 2345678901),
(3, 'Krish', 'krish@example.com', 3456789012),
(4, 'Himanshu', 'hima@examole.com', 1452369872),
(5, 'Ayush', 'ayush@example.com', 7854213695)

SELECT * FROM Customers

CREATE TABLE Orders (
OrderID INT PRIMARY KEY,
OrderDate DATE NOT NULL,
Amount INT,
CustomerID INT,
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
)

INSERT INTO Orders (OrderID, OrderDate, Amount, CustomerID) VALUES
(1, '2025-03-01', 150, 1),
(2, '2025-03-02', 297, 2),
(3, '2025-03-03', 250, 3),
(4, '2025-03-04', 543, 4),
(5, '2025-03-05', 327, 5)

SELECT * FROM Orders