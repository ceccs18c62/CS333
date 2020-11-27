-- create a table department
CREATE TABLE department (
  Code CHAR(2) PRIMARY KEY,
  Title VARCHAR(10),
  Dept_name VARCHAR(20) UNIQUE,
  Dept_id CHAR(2),
  Salary FLOAT CHECK(Salary>2000)
);

-- create a table instructor
CREATE TABLE instructor (
  Name VARCHAR(10) NOT NULL,
  Code CHAR(2),
  Id CHAR(10) DEFAULT "instructor"
);

-- insert some values into department
INSERT INTO department
VALUES("1c","engineering","computer sci","cs",6500);
INSERT INTO department
VALUES("2e","engineering","electronic","ee",3500);
INSERT INTO department
VALUES("3ec","engineering","ele and comm","ec",3800);
SELECT * FROM department;

-- output-->
-- 1c|engineering|computer sci|cs|6500.0
-- 2e|engineering|electronic|ee|3500.0
-- 3ec|engineering|ele and comm|ec|3800.0


-- insert some values into instructor
INSERT INTO instructor
(Name,Code)
VALUES("ram","rc");
INSERT INTO instructor
VALUES("sam","se","1src");
INSERT INTO instructor
VALUES("tom","tec","2tec");
SELECT * FROM instructor;

-- output-->
-- ram|rc|instructor
-- sam|se|1src
-- tom|tec|2tec









