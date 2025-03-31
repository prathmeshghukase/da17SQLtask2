CREATE TABLE Students (
StudentID INT PRIMARY KEY,
FirstName VARCHAR NOT NULL,
LastName VARCHAR NOT NULL,
Major VARCHAR
)

INSERT INTO Students (StudentID, FirstName, LastName, Major) VALUES
(1, 'Naman', 'Kriya', 'Computer Science'),
(2, 'Ayush', 'Jaiswal', 'Mathematics'),
(3, 'Aditya', 'Mende', 'Engineering'),
(4, 'Mansi', 'Nimbalkar', 'Physics'),
(5, 'Ishika', 'Nagte', 'Astronomy')

SELECT * FROM Students

CREATE TABLE Enrollments (
EnrollmentID INT PRIMARY KEY,
CourseName VARCHAR NOT NULL,
StudentID INT,
FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
)

INSERT INTO Enrollments (EnrollmentID, CourseName, StudentID) VALUES
(1, 'Algorithms', 1),
(2, 'Cryptography', 2),
(3, 'Machine Learning', 3),
(4, 'Quantum Mechanics', 4),
(5, 'Celestial Navigation',5)

SELECT * FROM Enrollments
