Name: Ravi Ranjan Kumar<br>
UID: 25MCA20098<br>
Branch: MCA General<br>
Semester: II<br>
Subject: Technical Training<br>
Subject Code: 25CAP-652<br>

<hr>

📌 Experiment

Title: Implementation and Analysis of SQL Views for Data Abstraction and Simplified Querying in PostgreSQL.<br>
Description: This worksheet focuses on understanding and implementing SQL views in PostgreSQL to simplify complex database queries and provide a secure abstraction layer over base tables. The practical demonstrates how views are created from single and multiple tables, including join and aggregate views, to present filtered and summarized data. These techniques are widely used in enterprise applications such as HR systems, reporting dashboards, payroll modules, and role-based data access systems where controlled and simplified data presentation is required.

<hr>

🛠️ Tools Used

PostgreSQL — Open-source relational database system

<hr>

🎯 Objective

The objectives of this practical session are:

To understand the concept and purpose of SQL views in database systems

To learn creation of simple, join, and aggregate views

To implement data abstraction by hiding complex queries

To restrict access to sensitive data using views

To analyze view usage in real-world reporting and enterprise systems

<hr>

🧪 Practical / Experiment Steps

Identify scenarios requiring simplified or restricted data access

Create a simple view to filter active employee records

Create a join view combining Employees and Departments tables

Create an aggregate view for department-level statistics

Query and verify outputs from each view

Analyze abstraction and security benefits of views

Record outputs and observations

<hr>

⚙️ Procedure of the Experiment and Screenshots

The system was started and logged in successfully.

PostgreSQL client tool (psql / pgAdmin) was opened.

Two tables named Departments and Employees were created to store data for view demonstration.

CREATE TABLE Departments (<br>
    DeptID SERIAL PRIMARY KEY,<br>
    DeptName VARCHAR(50)<br>
);

CREATE TABLE Employees (<br>
    EmpID SERIAL PRIMARY KEY,<br>
    EmpName VARCHAR(50),<br>
    DeptID INT REFERENCES Departments(DeptID),<br>
    Salary DECIMAL(10,2),<br>
    Status VARCHAR(10)<br>
);

Sample records were inserted into the tables.

INSERT INTO Departments (DeptName) VALUES<br>
('HR'),<br>
('IT'),<br>
('Finance'),<br>
('Sales');

INSERT INTO Employees (EmpName, DeptID, Salary, Status) VALUES<br>
('Amit', 2, 60000, 'Active'),<br>
('Riya', 1, 45000, 'Active'),<br>
('Kunal', 2, 70000, 'Inactive'),<br>
('Sneha', 3, 50000, 'Active'),<br>
('Rahul', 4, 40000, 'Active'),<br>
('Anita', 2, 65000, 'Active');

<img width="997" height="346" alt="image" src="https://github.com/user-attachments/assets/3e2b5dc5-913a-48f9-a692-02ad5432fb30" />

<img width="1125" height="423" alt="image" src="https://github.com/user-attachments/assets/1a73e54a-036e-4cdf-b0c3-5d0e04621c34" />

Simple View for Active Employees

CREATE OR REPLACE VIEW ActiveEmployees AS<br>
SELECT EmpID, EmpName, DeptID, Salary<br>
FROM Employees<br>
WHERE Status = 'Active';

<img width="794" height="339" alt="image" src="https://github.com/user-attachments/assets/515223cb-e18a-4456-8475-9fa1cebe867a" />

Join View for Employee-Department Details

CREATE OR REPLACE VIEW EmployeeDeptView AS<br>
SELECT e.EmpID, e.EmpName, d.DeptName, e.Salary<br>
FROM Employees e<br>
JOIN Departments d<br>
ON e.DeptID = d.DeptID;

<img width="1030" height="435" alt="image" src="https://github.com/user-attachments/assets/a8d5da1d-7fd1-4afc-9d09-1bb18557e102" />

Aggregate Summary View for Department Statistics

CREATE OR REPLACE VIEW DeptSummary AS<br>
SELECT d.DeptName,<br>
       COUNT(e.EmpID) AS TotalEmployees,<br>
       AVG(e.Salary) AS AvgSalary<br>
FROM Departments d<br>
LEFT JOIN Employees e<br>
ON d.DeptID = e.DeptID<br>
GROUP BY d.DeptName;

<img width="994" height="416" alt="image" src="https://github.com/user-attachments/assets/4e88c5e4-a088-404f-964b-ef7a958c5d1b" />

Views were queried and outputs verified successfully.

Outputs were noted and screenshots were taken for record and submission.

<hr>

🔁 Input / Output Details

Input Provided

SQL CREATE VIEW statements

Employees and Departments table records

Join and aggregate queries for abstraction

Output Generated

Filtered list of active employees

Employee details with department names

Department-wise employee count and average salary

Simplified query results through views

<hr>

📚 Learning Outcome

Understanding abstraction using SQL views

Ability to hide joins and complex logic behind views

Knowledge of restricting sensitive data access

Practical creation of simple and aggregate views

Application of views in real-world systems such as HR, payroll, and reporting
