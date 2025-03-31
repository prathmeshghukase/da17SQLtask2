CREATE TABLE Patients (
PatientID INT PRIMARY KEY,
Name VARCHAR NOT NULL,
DateOfBirth DATE,
Address VARCHAR
)

INSERT INTO Patients (PatientID, Name, DateOfBirth, Address) VALUES
(1, 'Himanshu', '1997-06-27', 'Nagpur'),
(2, 'Kartik', '2005-01-04', 'Nandanvan'),
(3, 'Mansi', '1996-11-07', 'Nara'),
(4, 'Aditya', '2003-03-14', 'Koradi'),
(5, 'Nikita', '1998-07-10', 'Mahal')

SELECT * FROM Patients 

CREATE TABLE Appointments (
AppointmentID INT PRIMARY KEY,
AppointmentDate DATE NOT NULL,
Doctor VARCHAR NOT NULL,
PatientID INT,
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
)

INSERT INTO Appointments (AppointmentID, AppointmentDate, Doctor, PatientID) VALUES
(1, '2025-03-10', 'Dr. Smith', 1),
(2, '2025-03-11', 'Dr. Shrikant', 2),
(3, '2025-03-12', 'Dr. Prathmesh', 3),
(4, '2025-03-13', 'Dr. Kartik', 4),
(5, '2025-03-14', 'Dr. Mansi', 5)

SELECT * FROM Appointments

