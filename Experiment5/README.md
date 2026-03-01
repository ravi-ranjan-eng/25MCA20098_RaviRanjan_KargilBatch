Name: Ravi Ranjan Kumar
UID: 25MCA20098
Branch: MCA General
Semester: II
Subject: Technical Training
Subject Code: 25CAP-652


📌 Experiment

Title: Implementation and Analysis of Cursors for Row-by-Row Processing in PostgreSQL.<br>
Description: This worksheet focuses on understanding and implementing SQL cursors in PostgreSQL for sequential row-by-row processing of query results. The practical demonstrates how cursors are declared, opened, fetched, and closed to perform record-specific operations such as conditional salary updates and dynamic calculations. These techniques are widely used in enterprise database applications like payroll systems, reporting modules, and data migration tasks where procedural logic is required on individual records.


🛠️ Tools Used

PostgreSQL — Open-source relational database system


🎯 Objective

The objectives of this practical session are:

To understand the concept and need of cursors in database programming

To learn cursor lifecycle operations: DECLARE, OPEN, FETCH, CLOSE

To perform conditional and procedural operations on individual rows

To analyze row-by-row data manipulation using SQL cursors

To relate cursor usage with real-world scenarios like payroll updates and reporting


🧪 Practical / Experiment Steps

Identify scenarios requiring row-by-row processing

Implement a simple forward-only cursor to fetch records

Perform complex row-level manipulation using cursor logic

Apply conditional salary update based on experience and performance

Handle cursor termination and empty result conditions

Verify updated records after cursor execution

Record outputs and observations


⚙️ Procedure of the Experiment and Screenshots

The system was started and logged in successfully.

PostgreSQL client tool (psql / pgAdmin) was opened.

A table named Employee was created to store employee details.

CREATE TABLE Employee (<br>
    EmpID SERIAL PRIMARY KEY,<br>
    EmpName VARCHAR(50),<br>
    Experience INT,<br>
    Performance CHAR(1),<br>
    Salary DECIMAL(10,2)<br>
);

Sample records were inserted into the table.

INSERT INTO Employee (EmpName, Experience, Performance, Salary) VALUES<br>
('Amit', 6, 'A', 50000),<br>
('Riya', 4, 'B', 40000),<br>
('Kunal', 7, 'A', 60000),<br>
('Sneha', 3, 'B', 35000),<br>
('Rahul', 2, 'C', 30000),<br>
('Anita', 5, 'A', 55000);

<img width="1125" height="488" alt="image" src="https://github.com/user-attachments/assets/8c56a00b-211e-4037-8041-c5187f5f1030" />

Simple Forward-Only Cursor Implementation

DO $$<br>
DECLARE<br>
    emp_rec RECORD;<br>
    employee_cursor CURSOR FOR<br>
        SELECT empid, empname, salary FROM employee;<br>
BEGIN<br>
    OPEN employee_cursor;<br>
    LOOP<br>
        FETCH employee_cursor INTO emp_rec;<br>
        EXIT WHEN NOT FOUND;<br>
        RAISE NOTICE 'ID: %, Name: %, Salary: %',<br>
                     emp_rec.empid, emp_rec.empname, emp_rec.salary;<br>
    END LOOP;<br> 
    CLOSE employee_cursor;<br>
END $$;

<img width="689" height="333" alt="image" src="https://github.com/user-attachments/assets/25e207e2-83e4-4022-bc4e-9c7cce4da346" />

Complex Row-by-Row Salary Update Using Cursor

DO $$<br>
DECLARE<br>
    emp_rec RECORD;<br>
    employee_cursor CURSOR FOR<br>
        SELECT empid, experience, performance, salary FROM employee;<br>
BEGIN<br>
    OPEN employee_cursor;<br>
    LOOP<br>
        FETCH employee_cursor INTO emp_rec;<br>
        EXIT WHEN NOT FOUND;<br>  
        IF emp_rec.experience > 5 AND emp_rec.performance = 'A' THEN<br>
            UPDATE employee SET salary = salary * 1.2 WHERE empid = emp_rec.empid;<br>
        ELSIF emp_rec.experience > 3 THEN<br>
            UPDATE employee SET salary = salary * 1.1 WHERE empid = emp_rec.empid;<br>
        ELSE<br>
            UPDATE employee SET salary = salary * 1.05 WHERE empid = emp_rec.empid;<br>
        END IF;<br>      
    END LOOP;<br>  
    CLOSE employee_cursor;<br>
END $$;

<img width="1125" height="502" alt="image" src="https://github.com/user-attachments/assets/98b78bf7-7b1f-4af7-85ec-bb86166d7b9c" />

Outputs were verified, noted, and screenshots were taken for record and submission.


🔁 Input / Output Details

Input Provided

Cursor queries with DECLARE, OPEN, FETCH, CLOSE

Employee table records for row-wise processing

Conditional logic based on experience and performance

Output Generated

Employee details printed row by row

Updated salary values after cursor processing

Conditional salary increments applied correctly

Successful cursor termination without errors


📚 Learning Outcome

Understanding sequential access of records using SQL cursors

Practical knowledge of cursor lifecycle and syntax in PostgreSQL

Ability to perform conditional row-level updates

Awareness of exception handling and resource management in cursors

Application of cursors in real-world scenarios such as payroll updates, reporting, and data migration
