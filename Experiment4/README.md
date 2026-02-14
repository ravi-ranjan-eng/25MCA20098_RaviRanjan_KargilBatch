Name: Ravi Ranjan Kumar<br>
UID: 25MCA20098<br>
Branch: MCA General<br>
Semester: II<br>
Subject: Technical Training<br>
Subject Code: 25CAP-652<br>

<hr>

📌 Experiment

Title: Implementation of Iterative Control Structures using FOR, WHILE, and LOOP in PostgreSQL.<br>
Description: This worksheet focuses on understanding and implementing iterative control structures in PostgreSQL using PL/pgSQL. The practical demonstrates how FOR, WHILE, and LOOP constructs are used to perform repetitive tasks such as row-by-row processing, conditional execution, and batch updates. These concepts are widely used in real-world database applications like payroll systems, reporting modules, and enterprise-level data processing.

<hr>

🛠️ Tools Used

PostgreSQL — Open-source relational database system

<hr>

🎯 Objective

The objectives of this practical session are:

To understand why iteration is required in database programming

To learn the syntax and working of FOR, WHILE, and LOOP constructs

To analyze repeated execution of SQL statements using PL/pgSQL

To relate loop constructs with real-world database scenarios

To gain conceptual clarity of procedural SQL used in enterprise systems

<hr>

🧪 Practical / Experiment Steps

Identify scenarios where repetitive execution is required

Implement a simple FOR loop for fixed iteration

Use a FOR loop with SELECT query for row-by-row processing

Implement conditional iteration using WHILE loop

Implement infinite LOOP with EXIT condition

Apply iteration logic to a real-world scenario like salary increment

Combine LOOP with IF condition for decision-based processing

<hr>

⚙️ Procedure of the Experiment and Screenshots

The system was started and logged in successfully.

PostgreSQL client tool (psql / pgAdmin) was opened.

A table named employees was created to store employee details.

CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(50),
    salary NUMERIC(10,2)
);

Sample records were inserted into the table.

INSERT INTO employees (emp_name, salary) VALUES
('Amit', 30000),
('Riya', 40000),
('Kunal', 35000),
('Sneha', 45000);

<img width="494" height="259" alt="Screenshot 2026-02-04 185452" src="https://github.com/user-attachments/assets/5d91fc9d-83f9-4e37-83b5-56a5eaff632c" />

FOR Loop – Simple Iteration
DO $$
BEGIN
    FOR i IN 1..5 LOOP
        RAISE NOTICE 'Iteration number: %', i;
    END LOOP;
END $$;

<img width="386" height="195" alt="Screenshot 2026-02-04 185555" src="https://github.com/user-attachments/assets/92811a11-094b-47ca-8718-3842d8eb19da" />

FOR Loop with Query (Row-by-Row Processing)
DO $$
DECLARE
    rec RECORD;
BEGIN
    FOR rec IN SELECT emp_name, salary FROM employees LOOP
        RAISE NOTICE 'Employee: %, Salary: %', rec.emp_name, rec.salary;
    END LOOP;
END $$;

<img width="422" height="167" alt="Screenshot 2026-02-04 185813" src="https://github.com/user-attachments/assets/3aed2d61-5b07-4615-a2f8-7f2e4a71b2cc" />

WHILE Loop – Conditional Iteration
DO $$
DECLARE
    counter INT := 1;
BEGIN
    WHILE counter <= 5 LOOP
        RAISE NOTICE 'Counter value: %', counter;
        counter := counter + 1;
    END LOOP;
END $$;

<img width="365" height="197" alt="Screenshot 2026-02-04 185952" src="https://github.com/user-attachments/assets/45a589cf-7184-4e79-93f5-41144471fc80" />

LOOP with EXIT WHEN Condition
DO $$
DECLARE
    num INT := 1;
BEGIN
    LOOP
        RAISE NOTICE 'Number: %', num;
        num := num + 1;
        EXIT WHEN num > 5;
    END LOOP;
END $$;

<img width="341" height="193" alt="Screenshot 2026-02-04 190108" src="https://github.com/user-attachments/assets/48e02015-a1bf-419d-a2c6-63949fddf306" />

Salary Increment Using FOR Loop
DO $$
DECLARE
    rec RECORD;
BEGIN
    FOR rec IN SELECT emp_id, salary FROM employees LOOP
        UPDATE employees
        SET salary = salary + 2000
        WHERE emp_id = rec.emp_id;
    END LOOP;
END $$;

<img width="501" height="260" alt="Screenshot 2026-02-04 190232" src="https://github.com/user-attachments/assets/5c9af018-1e1b-439d-8455-e9f485dcc070" />

Combining LOOP with IF Condition
DO $$
DECLARE
    rec RECORD;
BEGIN
    FOR rec IN SELECT emp_name, salary FROM employees LOOP
        IF rec.salary >= 40000 THEN
            RAISE NOTICE 'High Salary Employee: %', rec.emp_name;
        ELSE
            RAISE NOTICE 'Average Salary Employee: %', rec.emp_name;
        END IF;
    END LOOP;
END $$;

<img width="400" height="182" alt="Screenshot 2026-02-04 190335" src="https://github.com/user-attachments/assets/00390104-6124-4de0-a1d2-989feba0b6ee" />

Outputs were verified, noted, and screenshots were taken for record and submission.

<hr>

🔁 Input / Output Details

Input Provided

PL/pgSQL blocks using FOR, WHILE, and LOOP

Employee records stored in the employees table

Loop counters and conditional logic

Output Generated

Iterative messages indicating loop execution

Employee details processed row by row

Updated salary values after increment operation

Conditional classification of employees based on salary

<hr>

📚 Learning Outcome

Understanding the importance of iteration in database programming

Practical knowledge of FOR, WHILE, and LOOP constructs in PostgreSQL

Experience with row-by-row data processing using PL/pgSQL

Application of loops in real-world scenarios such as payroll systems

Strong foundation in procedural SQL used in enterprise-level applications
