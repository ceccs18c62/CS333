-- create a table Employee
CREATE TABLE Employee (
  empID int PRIMARY KEY NOT NULL,
  name varchar(20) NOT NULL,
  dop date
);
INSERT INTO Employee
VALUES(1,"raj","20\11\1995");
INSERT INTO Employee
VALUES(2,"sam","25\01\1990");
INSERT INTO Employee
VALUES(3,"ram","10\08\1995");

-- 1 create a table Employeedetails
CREATE TABLE Employeedetails (
    detailsID char PRIMARY KEY NOT NULL,
    gender varchar(10) NOT NULL,
    dept varchar(20) NOT NULL,
    salary float NOT NULL,
    empid int,
    FOREIGN KEY (empid) REFERENCES Employee(empid)
);
INSERT INTO Employeedetails
VALUES("a","M","CS",45000,1);


-- 2 Display the details of employee table where empid in employedetails table
SELECT * FROM Employee
WHERE empID in(SELECT empID FROM Employeedetails);

-- output-> 1|raj|20\11\1995


-- 3 Display the details of employee table where emp id notin employedetails table
SELECT * FROM Employee
WHERE empID NOT IN(SELECT empID FROM Employeedetails);

-- output-> 2|sam|25\01\1990
--          3|ram|10\08\1995





