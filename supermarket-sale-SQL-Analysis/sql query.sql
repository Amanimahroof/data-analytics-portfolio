-- Create database
CREATE DATABASE supermarket;

-- Use the database
USE supermarket;

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,  -- Unique customer identifier
    Gender ENUM('Male', 'Female') NOT NULL,
    CustomerType ENUM('Member', 'Normal') NOT NULL
);

CREATE TABLE Branches (
    BranchID INT AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for each branch
    BranchName ENUM('A', 'B', 'C') NOT NULL,
    City VARCHAR(100) NOT NULL
);

CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductLine VARCHAR(100) NOT NULL,
    UnitPrice DECIMAL(10, 2) NOT NULL  -- Price per unit
);


DROP TABLE IF EXISTS Transactions;

CREATE TABLE Transactions (
    InvoiceID INT PRIMARY KEY,
    CustomerID INT,
    BranchID INT,
    ProductID INT,
    Quantity INT NOT NULL,
    Tax DECIMAL(10, 2) NOT NULL,  -- 5% of the cogs value
    Total DECIMAL(10, 2) NOT NULL,
    DateTime DATETIME NOT NULL,
    Payment ENUM('Ewallet', 'Cash', 'Credit Card') NOT NULL,
    Cogs DECIMAL(10, 2) NOT NULL,  -- Cost of goods sold
    GrossMarginPercentage DECIMAL(5, 2) DEFAULT 4.76,  -- Updated to 4.76
    GrossIncome DECIMAL(10, 2) NOT NULL,
    Rating INT NOT NULL,  -- Customer rating
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (BranchID) REFERENCES Branches(BranchID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);


DESCRIBE customers;

SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM branches;
SELECT * FROM transactions;

SELECT Gender, COUNT(*) AS CustomerCount
FROM customers
GROUP BY Gender;

SELECT b.BranchName, COUNT(t.InvoiceID) AS TransactionCount
FROM transactions t
JOIN branches b ON t.BranchID = b.BranchID
GROUP BY b.BranchName;

SELECT b.BranchName, SUM(t.Total) AS TotalRevenue
FROM transactions t
JOIN branches b ON t.BranchID = b.BranchID
GROUP BY b.BranchName;


SELECT p.ProductLine, SUM(t.Quantity) AS TotalQuantitySold
FROM transactions t
JOIN products p ON t.ProductID = p.ProductID
GROUP BY p.ProductLine
ORDER BY TotalQuantitySold DESC;


SELECT Payment, COUNT(*) AS TransactionCount, SUM(Total) AS TotalRevenue
FROM transactions
GROUP BY Payment;


SELECT c.CustomerID, COUNT(t.InvoiceID) AS PurchaseCount
FROM transactions t
JOIN customers c ON t.CustomerID = c.CustomerID
GROUP BY c.CustomerID
ORDER BY PurchaseCount DESC;


SELECT c.CustomerID, COUNT(t.InvoiceID) AS PurchaseCount
FROM transactions t
JOIN customers c ON t.CustomerID = c.CustomerID
GROUP BY c.CustomerID
HAVING PurchaseCount > 1;

SELECT HOUR(DateTime) AS Hour, SUM(Total) AS TotalSales
FROM transactions
GROUP BY HOUR(DateTime)
ORDER BY Hour;















