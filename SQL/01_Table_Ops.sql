CREATE DATABASE DS;
USE DS;

CREATE TABLE students(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL DEFAULT 'No Name',
    age INT,
    email VARCHAR(100) UNIQUE,
    admission_date DATE
);

SELECT * FROM students;

DESCRIBE students; 

RENAME TABLE students TO student;

SHOW TABLES;

DROP TABLE student;

ALTER TABLE students RENAME COLUMN  admission_date TO adm_date;

ALTER TABLE students DROP COLUMN adm_date;

ALTER TABLE students ADD COLUMN Is_passed BOOL DEFAULT True;
ALTER TABLE students ADD COLUMN gender VARCHAR(10);

ALTER TABLE students MODIFY COLUMN name VARCHAR(50) DEFAULT ("");
ALTER TABLE students MODIFY COLUMN name VARCHAR(50) AFTER Is_passed;

-- INSERTING DATA 

CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    grade VARCHAR(10),
    DOB DATE
);

INSERT INTO student VALUES (1, "Rohan", 34, "10th", "1992-02-03");

SELECT * FROM student;

-- INSERTING 1 ROW AT A TIME 
INSERT INTO student (id, name, age, grade, DOB) VALUES (2, 'Ravi Sharma', 17, '11th', '2006-03-22'); 
INSERT INTO student (id, name, age, grade, DOB) VALUES (3, 'Meena Joshi', 15, '9th', NULL);
INSERT INTO student (id, name, age, grade, DOB) VALUES (4, 'Arjun Verma', 18, '12th', NULL);
INSERT INTO student (id, name, age, grade, DOB) VALUES (5, 'Sara Ali', 16, '10th', NULL);
INSERT INTO student (id, name, age, grade, DOB) VALUES (6, 'Karan Mehta', 17, '11th', NULL);
INSERT INTO student (id, name, age, grade, DOB) VALUES (7, 'Tanya Roy', 15, '9th', NULL);
INSERT INTO student (id, name, age, grade, DOB) VALUES (8, 'Vikram Singh', 18, '12th', NULL);
INSERT INTO student (id, name, age, grade, DOB) VALUES (9, 'Anjali Desai', 16, '10th', NULL);
INSERT INTO student (id, name, age, grade, DOB) VALUES (10, 'Farhan Zaidi', 17, '11th', NULL);

-- INSERTING MULTIPLE VALUES
INSERT INTO student (id, name, age, grade) VALUES
(15, 'Ayesha Khan', 16, '10th'),
(25, 'Ravi Sharma', 17, '11th'),
(35, 'Meena Joshi', 15, '9th'),
(45, 'Arjun Verma', 18, '12th'),
(55, 'Sara Ali', 16, '10th'),
(65, 'Karan Mehta', 17, '11th'),
(75, 'Tanya Roy', 15, '9th'),
(85, 'Vikram Singh', 18, '12th'),
(95, 'Anjali Desai', 16, '10th'),
(105, 'Farhan Zaidi', 17, '11th'); 

-- SELECTING DATA 
SELECT * FROM student WHERE grade = "10th";

SELECT name, age FROM student WHERE grade = "10th";

SELECT * FROM student WHERE age > 15 AND grade = "10th";

SELECT * FROM student WHERE age BETWEEN 15 AND 17;

SELECT * FROM student WHERE grade NOT IN ('9th', '11th');
SELECT * FROM student WHERE grade IN ('9th', '11th');

SELECT * FROM student WHERE name LIKE 'A%'; -- STARTING WITH A
SELECT * FROM student WHERE name NOT LIKE '%a'; -- ENDING WITH A 

SELECT * FROM student WHERE DOB IS NULL;
SELECT * FROM student WHERE DOB IS NOT NULL;

SELECT * FROM student WHERE (grade = '10th' OR grade = '11th') AND age >= 16; -- COMPLEX CONDITIONS

-- ORDERBY 
SELECT * FROM student WHERE DOB IS NOT NULL ORDER BY age DESC;
SELECT * FROM student WHERE DOB IS NOT NULL ORDER BY age ASC; 

-- LIMIT 
SELECT * FROM student ORDER BY age ASC LIMIT 5;
SELECT * FROM student ORDER BY age ASC LIMIT 5, 10; -- FROM 5 TO 10

-- UPDATE 
UPDATE student SET grade = 'X' WHERE grade = '10th';
UPDATE student SET grade = 'IX' WHERE grade = '9th';
UPDATE student SET grade = 'XI' WHERE grade = '11th';
UPDATE student SET grade = 'XII' WHERE grade = '12th';

UPDATE student SET age = age + 1 WHERE age < 18;

-- DELETING
 DELETE FROM student WHERE age = 34;
 DELETE FROM student;
 DROP TABLE student;