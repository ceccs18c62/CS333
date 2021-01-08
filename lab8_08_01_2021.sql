CREATE TABLE Employee(
    code CHAR(10) PRIMARY KEY,
    name VARCHAR(50),
    dob date,
    designation VARCHAR(50),
    salary FLOAT
);

-- 2
INSERT INTO Employee (code, name, dob, designation, salary)
VALUES
('trg45','Sam','2000-10-21','Manager',49000),
('trg46','Raj','2000-09-15','Manager',51000),
('trg47','Ram','2000-08-02','Clerk',25000),
('trg48','Tom','2000-07-11','Clerk',17000);

-- 3
SELECT SUM(salary) FROM Employee WHERE designation='Clerk';

-- 4
SELECT MAX(salary) FROM Employee;

-- 5
SELECT AVG(salary) FROM Employee;

-- 6
SELECT MIN(salary) FROM Employee;

-- 7
SELECT COUNT(*) FROM Employee;

--output


42000.0
51000.0
35500.0
17000.0
4

[Program exited with exit code 0]

