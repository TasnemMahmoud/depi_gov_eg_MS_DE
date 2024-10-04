USE companydatabase;
GO 
CREATE PROCEDURE CreateConstraintsAndRelationships
AS
BEGIN

  ALTER TABLE Employees
  ADD CONSTRAINT PK_Employees_EmployeeID
  PRIMARY KEY (EmployeeID);

  ALTER TABLE Departments
  ADD CONSTRAINT PK_Departments_DepartmentID
  PRIMARY KEY (DepartmentID);

  ALTER TABLE Projects
  ADD CONSTRAINT PK_Projects_ProjectID
  PRIMARY KEY (ProjectID);

  ALTER TABLE Assignments
  ADD CONSTRAINT PK_Assignments_AssignmentID
  PRIMARY KEY (AssignmentID);


    ALTER TABLE Employees
    ADD CONSTRAINT FK_Employees_Departments
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);

    ALTER TABLE Assignments
    ADD CONSTRAINT FK_Assignments_Employees
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID);
    
    ALTER TABLE Assignments
    ADD CONSTRAINT FK_Assignments_Projects
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID);



    ALTER TABLE Departments
    ADD CONSTRAINT UQ_Departments_DepartmentName
    UNIQUE (DepartmentName);

    
    ALTER TABLE Projects
    ADD CONSTRAINT UQ_Projects_ProjectName
    UNIQUE (ProjectName);



    ALTER TABLE Assignments
    ADD CONSTRAINT CHK_Assignments_EndDate_Check
    CHECK (EndDate >= StartDate);

    ALTER TABLE Projects
    ADD CONSTRAINT CHK_Projects_EndDate_Check
    CHECK (EndDate >= StartDate OR EndDate IS NULL);

  ALTER TABLE Assignments
  ADD CONSTRAINT CHK_Assignments_Role_Check
  CHECK (Role != '');
END;