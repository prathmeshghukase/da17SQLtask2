CREATE TABLE Hotels (
HotelID INT PRIMARY KEY,
Name VARCHAR NOT NULL,
Location VARCHAR NOT NULL,
Rating INT
)

INSERT INTO Hotels (HotelID, Name, Location, Rating) VALUES
(1, 'Grand Palace Hotel', 'New York', 4),
(2, 'Ocean View Resort', 'Miami', 4),
(3, 'Mountain Lodge', 'Denver', 4),
(4, 'City Center Inn', 'Chicago', 3),
(5, 'Lakeview Hotel', 'Seattle', 4)

SELECT * FROM Hotels

CREATE TABLE Bookings (
BookingID INT PRIMARY KEY,
CustomerName VARCHAR NOT NULL,
CheckInDate DATE NOT NULL,
CheckOutDate DATE NOT NULL,
HotelID INT,
FOREIGN KEY (HotelID) REFERENCES Hotels(HotelID)
)

INSERT INTO Bookings (BookingID, CustomerName, CheckInDate, CheckOutDate, HotelID) VALUES
(101, 'Ayush', '2025-04-01', '2025-04-05', 1),
(102, 'Bhishek', '2025-04-03', '2025-04-07', 2),
(103, 'Mansi', '2025-04-10', '2025-04-15', 3),
(104, 'Devid', '2025-04-12', '2025-04-16', 4),
(105, 'Prathmesh', '2025-04-20', '2025-04-25', 5)

SELECT * FROM Bookings