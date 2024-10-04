USE companydatabase;;
GO

CREATE PROCEDURE PerformQueryTasks
AS
BEGIN

    -- Displays details about Employees hired in the most recent year
    SELECT * 
    FROM Employees
    WHERE YEAR(HireDate) = (
        SELECT MAX(YEAR(HireDate))
        FROM Employees
    );

    -- Displays EmployeeID, Name, and DepartmentName
    SELECT 
        EmployeeID,
        FirstName + ' ' + LastName As Name,
        DepartmentName
    FROM Employees 
    FULL OUTER JOIN Departments 
    ON Employees.DepartmentID = Departments.DepartmentID;

    -- Displays Number of Emplopees per Department
    SELECT 
        DepartmentID, 
        COUNT(*) AS 'Employees/Department'
    FROM Employees
    GROUP BY DepartmentID;

    -- Displays Projects in progress
    select * 
    FROM Projects
    WHERE EndDate IS NULL
    ORDER BY StartDate;

    -- Displays details about Assignments in progress.
    SELECT 
        AssignmentID,
        Assignments.StartDate, 
        Assignments.ProjectID,
        ProjectName,
        Role,
        FirstName + ' ' + LastName AS EmployeeName
    FROM Assignments
    FULL OUTER JOIN Projects ON Projects.ProjectID = Assignments.ProjectID
    FULL OUTER JOIN Employees ON Assignments.EmployeeID = Employees.EmployeeID
    WHERE Assignments.EndDate IS NULL;

END;