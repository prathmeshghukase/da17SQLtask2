CREATE TABLE Customers_B (
CustomerID INT PRIMARY KEY,
FirstName VARCHAR NOT NULL,
LastName VARCHAR NOT NULL,
PhoneNumber BIGINT NOT NULL
)

INSERT INTO Customers_B (CustomerID, FirstName, LastName, PhoneNumber) VALUES
(1, 'Amit', 'Sharma', 9876543),
(2, 'Priya', 'Patel', 876543),
(3, 'Rahul', 'Nair', 765432),
(4, 'Sneha', 'Reddy', 654321),
(5, 'Vikram', 'Singh', 543210)

SELECT * FROM Customers_B 

CREATE TABLE Accounts (
AccountID INT PRIMARY KEY,
CustomerID INT,
AccountType VARCHAR NOT NULL,
Balance INT NOT NULL,
FOREIGN KEY (CustomerID) REFERENCES Customers_B(CustomerID)
)

INSERT INTO Accounts (AccountID, CustomerID, AccountType, Balance) VALUES
(101, 1, 'Savings', 15000),
(102, 2, 'Checking', 25000),
(103, 3, 'Savings', 35000),
(104, 4, 'Checking', 45000),
(105, 5, 'Savings', 55000)

SELECT * FROM Accounts

CREATE TABLE Transactions (
TransactionID INT PRIMARY KEY,
AccountID INT,
TransactionType VARCHAR NOT NULL,
Amount INT NOT NULL,
TransactionDate DATE NOT NULL,
FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
)

INSERT INTO Transactions (TransactionID, AccountID, TransactionType, Amount, TransactionDate) VALUES
(1001, 101, 'Deposit', 5000, '2025-03-01'),
(1002, 102, 'Withdrawal', 2000, '2025-03-02'),
(1003, 103, 'Deposit', 3000, '2025-03-03'),
(1004, 104, 'Withdrawal', 4000,'2025-03-04'),
(1005, 105, 'Deposit', 1000, '2025-03-05')

SELECT * FROM Transactions