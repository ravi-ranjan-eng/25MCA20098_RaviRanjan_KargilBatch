CREATE TABLE Employee (
    EmpID SERIAL PRIMARY KEY,
    EmpName VARCHAR(50),
    Experience INT,
    Performance CHAR(1),
    Salary DECIMAL(10,2)
);

INSERT INTO Employee (EmpName, Experience, Performance, Salary) VALUES
('Amit', 6, 'A', 50000),
('Riya', 4, 'B', 40000),
('Kunal', 7, 'A', 60000),
('Sneha', 3, 'B', 35000),
('Rahul', 2, 'C', 30000),
('Anita', 5, 'A', 55000);

SELECT * FROM Employee;



DO $$
DECLARE
    emp_rec RECORD;  
    employee_cursor CURSOR FOR
        SELECT empid, empname, salary FROM employee;
BEGIN
    OPEN employee_cursor;
    LOOP
        FETCH employee_cursor INTO emp_rec;
        EXIT WHEN NOT FOUND;
        RAISE NOTICE 'ID: %, Name: %, Salary: %', 
                     emp_rec.empid, emp_rec.empname, emp_rec.salary;
    END LOOP;
    CLOSE employee_cursor;
END $$;


DO $$
DECLARE
    emp_rec RECORD;
    employee_cursor CURSOR FOR
        SELECT empid, experience, performance, salary FROM employee;
BEGIN
    OPEN employee_cursor;
    LOOP
        FETCH employee_cursor INTO emp_rec;
        EXIT WHEN NOT FOUND;   
        IF emp_rec.experience > 5 AND emp_rec.performance = 'A' THEN
            UPDATE employee SET salary = salary * 1.2 WHERE empid = emp_rec.empid;
        ELSIF emp_rec.experience > 3 THEN
            UPDATE employee SET salary = salary * 1.1 WHERE empid = emp_rec.empid;
        ELSE
            UPDATE employee SET salary = salary * 1.05 WHERE empid = emp_rec.empid;
        END IF;        
    END LOOP;    
    CLOSE employee_cursor;
END $$;

SELECT * FROM Employee;
