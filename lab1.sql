-- create table
CREATE TABLE student (
  sno int,
  name varchar(200),
  mark float,
  dept varchar(200)
 
);
-- adding new attribute
ALTER TABLE student ADD age int;

insert into student 
values (1, "raj"," cs",48,19);
select * from student;

-- Change the datatype size of dept
ALTER TABLE student MODIFY COLUMN dept varchar(250);

-- deleting mark column
ALTER TABLE student 
DROP COLUMN mark;

-- deleting mark column
ALTER TABLE student  
RENAME TO students;  

select * from students;

-- deleting the values
DELETE FROM students;

-- deleting the table
DROP TABLE students;


