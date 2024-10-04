CREATE OR ALTER VIEW EmployeeProjectAssignments AS
WITH EmployeeDetails AS (
    SELECT 
        E.EmployeeID,
        CONCAT(E.FirstName, ' ', E.LastName) AS EmployeeName,
        D.DepartmentName
    FROM 
        Employees E
    JOIN 
        Departments D ON E.DepartmentID = D.DepartmentID
)
SELECT 
    ED.EmployeeName,
    ED.DepartmentName,
    P.ProjectName,
    A.Role,
    DATEDIFF(DAY, A.StartDate, COALESCE(A.EndDate, GETDATE())) AS AssignmentDuration
FROM 
    EmployeeDetails ED
JOIN 
    Assignments A ON ED.EmployeeID = A.EmployeeID
JOIN 
    Projects P ON A.ProjectID = P.ProjectID;