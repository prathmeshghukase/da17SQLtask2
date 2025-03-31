CREATE TABLE Student (
StudentID INT PRIMARY KEY,
FirstName VARCHAR NOT NULL,
DateOfBirth DATE NOT NULL
)

INSERT INTO Student (StudentID, FirstName, DateOfBirth) VALUES
(1, 'Aditiya', '2005-05-15'),
(2, 'Babu',  '2006-08-22'),
(3, 'Gunjan', '2004-12-10'),
(4, 'Dinesh', '2005-03-30'),
(5, 'Ishika', '2006-07-19')

SELECT * FROM Student

CREATE TABLE Courses (
CourseID INT PRIMARY KEY,
CourseName VARCHAR NOT NULL,
Credits INT NOT NULL
)

INSERT INTO Courses (CourseID, CourseName, Credits) VALUES
(101, 'Mathematics', 4),
(102, 'Science', 3),
(103, 'History', 2),
(104, 'Literature', 3),
(105, 'Art', 2)

SELECT * FROM Courses

CREATE TABLE Enrollment (
EnrollmentID INT PRIMARY KEY,
StudentID INT,
CourseID INT,
EnrollmentDate DATE NOT NULL,
FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
)

INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID, EnrollmentDate) VALUES
(1001, 1, 101, '2025-03-01'),
(1002, 2, 102, '2025-03-02'),
(1003, 3, 103, '2025-03-03'),
(1004, 4, 104, '2025-03-04'),
(1005, 5, 105, '2025-03-05')

SELECT * FROM Enrollment