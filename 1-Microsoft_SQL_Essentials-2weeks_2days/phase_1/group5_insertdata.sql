USE CompanyDB;
GO

-- Insert data into Departments
INSERT INTO staff.Departments (DepartmentID, DepartmentName, Location)
VALUES 
    (12, 'PR', 'New York'),
    (16, 'Accounting', 'Los Angeles'),
    (20, 'Marketing', 'London'),
    (24, 'Sales', 'Berlin'),
    (28, 'Law', 'Tokyo');

-- Insert data into Employees
INSERT INTO staff.Employees (EmployeeID, FirstName, LastName, DepartmentID, HireDate, JobTitle, Salary)
VALUES 
    (12, 'Mark', 'Smith', 12, '2021-01-15', 'Senior Technician', 32000),
    (16, 'Bark', 'Johnson', 24, '2024-01-05', 'Lead Salesman', 67000),
    (20, 'John', 'Williams', 28, '2019-10-15', 'Senior Lawyer', 125000),
    (24, 'Andrew', 'Brown', 16, '2021-01-15', 'Senior Manager', 135000),
    (28, 'Jim', 'Taylor', 12, '2021-09-15', 'PR Manager', 72000);

-- Insert data into Projects
INSERT INTO staff.Projects (ProjectID, ProjectName, StartDate, EndDate, Budget)
VALUES 
    (12, 'Project Omega+', '2011-11-11', '2016-11-01', 1050000),
    (16, 'Project Zeta', '2021-11-11', '2022-08-01', 120000),
    (20, 'Project Y', '2023-02-11', '2025-06-01', 1550000),
    (24, 'Project Beta', '2010-11-11', '2014-08-01', 650000),
    (28, 'Project 6001', '2018-06-11', '2022-10-01', 1050000);

-- Insert data into Assignments
INSERT INTO staff.Assignments (AssignmentID, ProjectID, EmployeeID, JobRole, AssignmentDate)
VALUES 
    (12, 12, 12, 'Senior Technician', '2024-09-16'),
    (16, 16, 16, 'Lead Salesman', '2013-09-16'),
    (20, 20, 20, 'Senior Lawyer', '2023-09-16'),
    (24, 24, 28, 'PR Manager', '2022-06-16'); -- Corrected employee ID and project ID

-- Insert data into Customers
INSERT INTO Sales.Customers (CustomerID, CustomerName, PhoneNumber, Email, Address)
VALUES 
    (4, 'Emma', '9876543211', 'emma@example.com', '901 Elm St'),
    (8, 'Noah', '8765432110', 'noah@example.com', '102 Maple St'),
    (12, 'Isabella', '7654321109', 'isabella@example.com', '203 Birch St'),
    (16, 'Ethan', '6543211098', 'ethan@example.com', '304 Cedar St');

-- Insert data into Orders
INSERT INTO Sales.Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES 
    (4, 4, '2024-04-10', 285.50),
    (8, 8, '2024-05-05', 200.00),
    (12, 12, '2024-06-20', 370.75),
    (16, 16, '2024-07-15', 430.30);

-- Insert data into Products
INSERT INTO Sales.Products (ProductID, ProductName, Category, Price, StockQuantity)
VALUES 
    (4, 'Laptop Computer', 'Electronics', 1300.99, 50),
    (8, 'Fitness Tracker', 'Electronics', 209.99, 160),
    (12, 'Bluetooth Headphones', 'Electronics', 139.99, 210),
    (16, 'Gaming Monitor', 'Electronics', 260.50, 90);

-- Insert data into OrderDetails
INSERT INTO Sales.OrderDetails (OrderID, ProductID, Quantity, UnitPrice)
VALUES 
    (4, 4, 1, 1300.99),
    (4, 8, 2, 209.99),
    (8, 12, 3, 139.99),
    (8, 16, 1, 260.50),
    (12, 4, 1, 1300.99),
    (16, 12, 2, 139.99);