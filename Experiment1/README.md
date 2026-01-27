📌 Overview

This project demonstrates the design and implementation of a sample database system using DDL, DML, DCL, and DQL operations in PostgreSQL.
It includes database creation, schema modification, data manipulation, and role-based access control.

👤 Student Details

Name: Ravi Ranjan Kumar

UID: 25MCA20098

Branch: MCA (General)

Semester: II

📝 Aim

To design and implement a database system incorporating DDL, DML, and DCL commands along with secure, role-based access privileges.

🎯 Objectives

Practice creating and modifying schemas using DDL.

Insert, update, and delete records using DML.

Implement access control using DCL.

Query data using DQL.

Understand constraints, keys, and foreign key relationships.

🛠️ Implementation
1. DDL – Table Creation

department

employee

project

Constraints used:

PRIMARY KEY

UNIQUE

CHECK

REFERENCES (Foreign Keys)

2. Schema Modification
ALTER TABLE employee ADD work_location VARCHAR(20);
ALTER TABLE employee DROP work_location;
ALTER TABLE employee ADD status VARCHAR(20) DEFAULT 'active';

3. DML – Data Manipulation

Performed operations:

INSERT → Adding department, employee & project records

UPDATE → Updating salary and department names

DELETE → Removing specific rows

4. DQL – Querying Data
SELECT * FROM department;
SELECT * FROM employee;
SELECT * FROM project;

5. DCL – Access Control
CREATE ROLE reporting_user LOGIN PASSWORD 'user123';

GRANT SELECT ON department TO reporting_user;
REVOKE SELECT ON department FROM reporting_user;

GRANT SELECT ON project TO reporting_user;
REVOKE CREATE ON SCHEMA PUBLIC FROM reporting_user;

📊 Output
Project Table

Shows project ID, name, department, start date and end date.
<img width="561" height="92" alt="image" src="https://github.com/user-attachments/assets/2e6ef75e-690b-4eef-a7d2-456dfb9c6de0" />

Employee Table

Shows employee ID, name, contact, join date, end date and status.

<img width="769" height="144" alt="image" src="https://github.com/user-attachments/assets/344bb539-ffdc-41d7-8f0c-4d1fe8f014e3" />

🎓 Learning Outcomes

Understanding of PostgreSQL query writing.

Practical knowledge of DDL, DML, DCL, and DQL commands.

Application of constraints such as CHECK and DEFAULT.

Implementing role-based access privileges for securing data.

📂 Files Included

SQL script used for database implementation

Output screenshots

Project report (PDF)
