USE companydatabase;
GO

CREATE PROCEDURE CreateViews
AS
BEGIN
    DECLARE @SQL NVARCHAR(MAX);

    SET @SQL = N'
    CREATE OR ALTER VIEW EmployeeProjectAssignments AS
    SELECT
        e.FirstName,
        e.LastName,
        d.DepartmentName,
        p.ProjectName,
        a.StartDate,
        a.EndDate,
        DATEDIFF(DAY, a.StartDate, a.EndDate) AS AssignmentDuration
    FROM
        Employees e
    JOIN
        Assignments a ON e.EmployeeID = a.EmployeeID
    JOIN
        Projects p ON a.ProjectID = p.ProjectID
    JOIN
        Departments d ON e.DepartmentID = d.DepartmentID;
    ';

    EXEC sp_executesql @SQL;
END;
GO