
CREATE TABLE Employee(
    code CHAR(410) PRIMARY KEY,
    name VARCHAR(50),
    dob DATE,
    designation VARCHAR(50),
    salary FLOAT
);

INSERT INTO Employee(code, name, dob, designation, salary)
VALUES
('R45','Ram','2000-09-22','manager',85000),
('s45','Sam','2000-08-19','sales',35000),
('t46','Tom','2000-08-12','clerk',36000),
('r47','Raj','2000-06-10','ceo',75000);

-- 2
SELECT * FROM Employee ORDER BY name DESC;

-- 3
CREATE TABLE Deposit(
    baccno INT,
    branch_name VARCHAR(50),
    amount FLOAT
);

INSERT INTO Deposit(baccno, branch_name, amount)
VALUES
(600456,'tsr',90000),
(600478,'pkd',975462),
(600489,'ern',785426),
(600502,'kzd',47856),
(600555,'mal',12000);

-- 4
SELECT branch_name,COUNT(baccno),SUM(amount) FROM Deposit GROUP BY branch_name;


--output

t46|Tom|2000-08-12|clerk|36000.0
s45|Sam|2000-08-19|sales|35000.0
R45|Ram|2000-09-22|manager|85000.0
r47|Raj|2000-06-10|ceo|75000.0
ern|1|785426.0
kzd|1|47856.0
mal|1|12000.0
pkd|1|975462.0
tsr|1|90000.0

[Program exited with exit code 0]

