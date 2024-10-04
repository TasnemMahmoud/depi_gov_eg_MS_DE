USE master;
CREATE DATABASE companydatabase;

USE companydatabase;
GO


CREATE SCHEMA employee;
GO

CREATE PROCEDURE CreateTables
AS
BEGIN

    CREATE TABLE Employees (
        EmployeeID INT IDENTITY(1,1),
        FirstName NVARCHAR(50) NOT NULL,
        LastName NVARCHAR(50) NOT NULL,
		HireDate DATE,
		DepartmentID INT

    );

  CREATE TABLE Departments (
        DepartmentID INT IDENTITY(1,1),
        DepartmentName NVARCHAR(100) NOT NULL,
		Location NVARCHAR(100) 
    );
    
 
    CREATE TABLE Projects (
        ProjectID INT IDENTITY(1,1),
        ProjectName NVARCHAR(100) NOT NULL,
        StartDate DATE NOT NULL,
        EndDate DATE
    );

    CREATE TABLE Assignments (
        AssignmentID INT IDENTITY(1,1),
        Role nvarchar(100) NOT NULL,
        StartDate DATE NOT NULL,
        EndDate DATE,
		ProjectID INT,
		EmployeeID INT
		
    );
END;