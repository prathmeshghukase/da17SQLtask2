CREATE TABLE Customers_MH (
CustomerID INT PRIMARY KEY,
FirstName VARCHAR NOT NULL,
LastName VARCHAR NOT NULL,
Email VARCHAR NOT NULL
)

INSERT INTO Customers_MH (CustomerID, FirstName, LastName, Email) VALUES
(1, 'Amit', 'Sharma', 'amit.sharma@example.com'),
(2, 'Priya', 'Patel', 'priya.patel@example.com'),
(3, 'Rahul', 'Nair', 'rahul.nair@example.com'),
(4, 'Sneha', 'Reddy', 'sneha.reddy@example.com'),
(5, 'Vikram', 'Singh', 'vikram.singh@example.com')

SELECT * FROM  Customers_MH

CREATE TABLE Events (
EventID INT PRIMARY KEY,
EventName VARCHAR NOT NULL,
EventDate DATE NOT NULL,
Venue TEXT NOT NULL
)

INSERT INTO Events (EventID, EventName, EventDate, Venue) VALUES
(101, 'Bollywood Music Fest', '2025-03-10', 'Mumbai Arena'),
(102, 'Classical Dance Recital', '2025-03-15', 'Delhi Auditorium'),
(103, 'Cricket World Cup Final', '2025-03-20', 'Eden Gardens'),
(104, 'Tech Conference 2025', '2025-03-25', 'Bangalore Convention Center'),
(105, 'Art Exhibition Opening', '2025-03-30', 'Kolkata Art Gallery')

SELECT * FROM Events

CREATE TABLE Tickets (
TicketID INT PRIMARY KEY,
EventID INT,
TicketType VARCHAR NOT NULL,
Price INT NOT NULL,
FOREIGN KEY (EventID) REFERENCES Events(EventID)
)

INSERT INTO Tickets (TicketID, EventID, TicketType, Price) VALUES
(201, 101, 'General Admission', 1500.00),
(202, 101, 'VIP', 5000),
(203, 102, 'Standard', 1200),
(204, 103, 'Premium', 8000),
(205, 104, 'Early Bird', 3000)

SELECT *FROM Tickets

CREATE TABLE Orders_MH (
OrderID INT PRIMARY KEY,
CustomerID INT,
OrderDate DATE NOT NULL,
TotalAmount INT NOT NULL,
FOREIGN KEY (CustomerID) REFERENCES Customers_MH(CustomerID)
)

INSERT INTO Orders_MH (OrderID, CustomerID, OrderDate, TotalAmount) VALUES
(301, 1, '2025-02-01', 1500),
(302, 2, '2025-02-05', 5000),
(303, 3, '2025-02-10', 1200),
(304, 4, '2025-02-15', 8000),
(305, 5, '2025-02-20', 3000)

SELECT * FROM Orders_MH

CREATE TABLE Payments (
PaymentID INT PRIMARY KEY,
OrderID INT,
PaymentDate DATE NOT NULL,
PaymentAmount INT NOT NULL,
PaymentMethod VARCHAR NOT NULL,
FOREIGN KEY (OrderID) REFERENCES Orders_MH(OrderID)
)

INSERT INTO Payments (PaymentID, OrderID, PaymentDate, PaymentAmount, PaymentMethod) VALUES
(401, 301, '2025-02-01', 1500, 'Credit Card'),
(402, 302, '2025-02-05', 5000, 'Debit Card'),
(403, 303, '2025-02-10', 1200, 'Net Banking'),
(404, 304, '2025-02-15', 8000, 'UPI'),
(405, 305, '2025-02-20', 3000, 'Credit Card')

SELECT * FROM Payments