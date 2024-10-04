-- Create database if it does not exist
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'CompanyDB')
BEGIN
    EXEC('CREATE DATABASE CompanyDB');
END
GO

USE CompanyDB;
GO

-- Create schema if it does not exist
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'Sales')
BEGIN
    EXEC('CREATE SCHEMA Sales');
END
GO

CREATE TABLE Sales.Products
(
	ProductID INT PRIMARY KEY,
	ProductName VARCHAR(80) UNIQUE,
	Category VARCHAR(50),
	Price DECIMAL(10,2) NOT NULL CHECK (Price >= 0) DEFAULT 0.00,
	StockQuantity INT CHECK (StockQuantity >= 0) DEFAULT 0 
);

CREATE TABLE Sales.OrderDetails
(
	OrderDetailID INT IDENTITY(1,1) PRIMARY KEY,
	OrderID INT NOT NULL,
	ProductID INT NOT NULL,
	Quantity INT NOT NULL CHECK (Quantity >= 0) DEFAULT 0,
	UnitPrice DECIMAL(10,2) NOT NULL CHECK (UnitPrice >= 0) DEFAULT 0.00 
);