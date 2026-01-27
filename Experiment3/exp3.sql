--Step 0

CREATE TABLE schema_analysis (
    id SERIAL PRIMARY KEY,
    schema_name VARCHAR(50),
    violation_count INT
);

INSERT INTO schema_analysis (schema_name, violation_count) VALUES
('FinanceSchema', 0),
('PayrollSchema', 2),
('InventorySchema', 2),
('HRSchema', 14),
('EmployeeSchema', 9);

select *from schema_analysis

--Step 1

SELECT 
    schema_name,
    violation_count,
    CASE
        WHEN violation_count = 0 THEN 'No Violation'
        WHEN violation_count BETWEEN 1 AND 3 THEN 'Minor Violation'
        WHEN violation_count BETWEEN 4 AND 8 THEN 'Moderate Violation'
        WHEN violation_count >= 9 THEN 'Critical Violation'
    END AS violation_level
FROM schema_analysis;

--Step 2

ALTER TABLE schema_analysis
ADD COLUMN approval_status VARCHAR(20);

UPDATE schema_analysis
SET approval_status = CASE
    WHEN violation_count = 0 THEN 'Approved'
    WHEN violation_count BETWEEN 1 AND 5 THEN 'Needs Review'
    WHEN violation_count > 5 THEN 'Rejected'
END;

SELECT * FROM schema_analysis

--Step 3

DO $$
DECLARE
    v_count INT := 14; 
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

--step 4

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


--Step 5

SELECT *
FROM schema_analysis
ORDER BY 
    CASE
        WHEN violation_count >= 9 THEN 1  
        WHEN violation_count BETWEEN 4 AND 8 THEN 2
        WHEN violation_count BETWEEN 1 AND 3 THEN 3
        ELSE 4
    END,
    schema_name;







