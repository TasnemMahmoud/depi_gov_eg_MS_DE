USE SourceDB;
GO

CREATE PROCEDURE InsertDataFromAnotherDatabase
AS
BEGIN

    SELECT ProjectID, ProjectName, StartDate, EndDate
    INTO CompanyDatabase.employee.Projects
    FROM SourceDB.dbo.Projects;

    SELECT AssignmentID, EmployeeID, ProjectID, Role, StartDate, EndDate
    INTO CompanyDatabase.employee.Assignments
    FROM SourceDB.dbo.Assignments;

    SELECT DepartmentID, DepartmentName
    INTO CompanyDatabase.employee.Departments
    FROM SourceDB.dbo.Departments;

    SELECT EmployeeID, FirstName, LastName, DepartmentID
    INTO CompanyDatabase.employee.Employees
    FROM SourceDB.dbo.Employees;
    
END;