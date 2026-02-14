CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(50),
    salary NUMERIC(10,2)
); 

INSERT INTO employees (emp_name, salary) VALUES
('Amit', 30000),
('Riya', 40000),
('Kunal', 35000),
('Sneha', 45000);

SELECT * FROM employees;


DO $$
BEGIN
    FOR i IN 1..5 LOOP
        RAISE NOTICE 'Iteration number: %', i;
    END LOOP;
END $$;

DO $$
DECLARE
    rec RECORD;
BEGIN
    FOR rec IN SELECT emp_name, salary FROM employees LOOP
        RAISE NOTICE 'Employee: %, Salary: %', rec.emp_name, rec.salary;
    END LOOP;
END $$;

DO $$
DECLARE
    counter INT := 1;
BEGIN
    WHILE counter <= 5 LOOP
        RAISE NOTICE 'Counter value: %', counter;
        counter := counter + 1;
    END LOOP;
END $$;

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
