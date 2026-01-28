🎯 Aim

To implement conditional logic in PostgreSQL using CASE expressions and IF–ELSE constructs for classification, validation, and rule-based decision-making.

🛠️ Tools Used

🐘 PostgreSQL

🎓 Objectives
Objective	Description
✔️ Conditional Execution	Understand how SQL evaluates conditions
✔️ CASE Expressions	Apply condition-based classification
✔️ IF–ELSE Logic	Use PL/pgSQL to control procedural flow
✔️ Data Categorization	Implement grading and violation logic
✔️ Backend Skills	Prepare for interviews & backend roles
📘 Theory Overview
🔹 CASE Expression

Used in SELECT, UPDATE, ORDER BY:

Sequential condition checking

Supports simple & searched CASE

Ideal for classification and status mapping

🔹 IF–ELSE Construct

Used in PL/pgSQL:

Supports multi-level decision flows

Perfect for backend rule validation

Used in functions, procedures, and DO blocks

🧪 Experiment Steps
Step 1 – CASE Classification

Classify violation counts as:

Count Range	Category
0	No Violation
1–3	Minor Violation
4–8	Moderate Violation
≥ 9	Critical Violation
Step 2 – Update Using CASE

Use CASE inside UPDATE to assign:

Approved

Needs Review

Rejected

Step 3 – IF–ELSE Block

Print messages based on violation count using a PL/pgSQL DO block.

Step 4 – Grading Students

Create a grade mapping using CASE based on marks.

Step 5 – Custom Sorting

Sort rows based on severity using CASE inside ORDER BY.

📁 SQL Scripts

All SQL files are provided inside /sql/.

✔️ 01_create_tables.sql
CREATE TABLE schema_violations (
    id SERIAL PRIMARY KEY,
    schema_name VARCHAR(50),
    violation_count INT
);

INSERT INTO schema_violations (schema_name, violation_count) VALUES
('Schema_A', 0),
('Schema_B', 2),
('Schema_C', 5),
('Schema_D', 9),
('Schema_E', 14);

✔️ 02_case_classification.sql
SELECT 
    schema_name,
    violation_count,
    CASE
        WHEN violation_count = 0 THEN 'No Violation'
        WHEN violation_count BETWEEN 1 AND 3 THEN 'Minor Violation'
        WHEN violation_count BETWEEN 4 AND 8 THEN 'Moderate Violation'
        ELSE 'Critical Violation'
    END AS violation_level
FROM schema_violations;

✔️ 03_case_update_status.sql
ALTER TABLE schema_violations
ADD COLUMN approval_status VARCHAR(20);

UPDATE schema_violations
SET approval_status = CASE
    WHEN violation_count = 0 THEN 'Approved'
    WHEN violation_count BETWEEN 1 AND 5 THEN 'Needs Review'
    ELSE 'Rejected'
END;

✔️ 04_if_else_block.sql
DO $$
DECLARE
    v_count INT := 7;
BEGIN
    IF v_count = 0 THEN
        RAISE NOTICE 'No Violations Found.';
    ELSIF v_count BETWEEN 1 AND 3 THEN
        RAISE NOTICE 'Minor Violations Present.';
    ELSIF v_count BETWEEN 4 AND 8 THEN
        RAISE NOTICE 'Moderate Violations Present.';
    ELSE
        RAISE NOTICE 'Critical Violations Present.';
    END IF;
END$$;

✔️ 05_grading_system.sql
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    student_name VARCHAR(50),
    marks INT
);

INSERT INTO students (student_name, marks) VALUES
('Arjun', 92),
('Riya', 76),
('Kabir', 64),
('Simran', 48),
('Vikram', 33);

SELECT 
    student_name,
    marks,
    CASE
        WHEN marks >= 90 THEN 'A'
        WHEN marks >= 75 THEN 'B'
        WHEN marks >= 60 THEN 'C'
        WHEN marks >= 40 THEN 'D'
        ELSE 'Fail'
    END AS grade
FROM students;

✔️ 06_custom_sorting.sql
SELECT *
FROM schema_analysis
ORDER BY 
    CASE
        WHEN violation_count >= 9 THEN 1
        WHEN violation_count BETWEEN 4 AND 8 THEN 2
        WHEN violation_count BETWEEN 1 AND 3 THEN 3
        ELSE 4
    END;

📊 Input / Output Analysis
Input

Schema names

Violation counts

Student names

Marks

Output

Violation categories

Approval statuses

Procedural decision messages

Student grades

Severity-based sorting

🎯 Learning Outcomes

Strong understanding of SQL conditional logic

Ability to use CASE effectively

Practical knowledge of IF–ELSE blocks

Ability to automate backend decisions

Preparedness for interviews and real backend applications
