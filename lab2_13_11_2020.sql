-- create a table
CREATE TABLE Employee (
  code varchar(5),
  name varchar(10),
  designation varchar(30),
  dop date,
  salary int
);

-- inserting two tuples
INSERT into Employee
VALUES("e1","Abi","leader","1995-02-12",45000);
INSERT into Employee
VALUES("e2","sam","manager","1993-03-24",58000);

-- selecting all details
SELECT * FROM Employee;

-- changing salary  
UPDATE Employee
SET salary=48000
WHERE code="e1";
SELECT * FROM Employee;

-- deleting a tuple
DELETE FROM Employee
WHERE code="e2";
SELECT * FROM Employee;
