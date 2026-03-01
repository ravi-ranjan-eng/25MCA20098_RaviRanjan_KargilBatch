CREATE TABLE Departments (
    DeptID SERIAL PRIMARY KEY,
    DeptName VARCHAR(50)
);

CREATE TABLE Employees (
    EmpID SERIAL PRIMARY KEY,
    EmpName VARCHAR(50),
    DeptID INT REFERENCES Departments(DeptID),
    Salary DECIMAL(10,2),
    Status VARCHAR(10)
);

INSERT INTO Departments (DeptName) VALUES
('HR'),
('IT'),
('Finance'),
('Sales');

INSERT INTO Employees (EmpName, DeptID, Salary, Status) VALUES
('Amit', 2, 60000, 'Active'),
('Riya', 1, 45000, 'Active'),
('Kunal', 2, 70000, 'Inactive'),
('Sneha', 3, 50000, 'Active'),
('Rahul', 4, 40000, 'Active'),
('Anita', 2, 65000, 'Active');

SELECT * FROM Departments;
SELECT * FROM Employees;

CREATE OR REPLACE VIEW ActiveEmployees AS
SELECT EmpID, EmpName, DeptID, Salary
FROM Employees
WHERE Status = 'Active';

SELECT * FROM ActiveEmployees;

CREATE OR REPLACE VIEW EmployeeDeptView AS
SELECT e.EmpID, e.EmpName, d.DeptName, e.Salary
FROM Employees e
JOIN Departments d
ON e.DeptID = d.DeptID;

SELECT * FROM EmployeeDeptView;

CREATE OR REPLACE VIEW DeptSummary AS
SELECT d.DeptName,
       COUNT(e.EmpID) AS TotalEmployees,
       AVG(e.Salary) AS AvgSalary
FROM Departments d
LEFT JOIN Employees e
ON d.DeptID = e.DeptID
GROUP BY d.DeptName;

SELECT * FROM DeptSummary;
