USE DS;

CREATE TABLE classes (
    class_id INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL
);

CREATE TABLE stu (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    class_id INT,
    FOREIGN KEY (class_id) REFERENCES classes(class_id)
	ON UPDATE CASCADE
	ON DELETE SET NULL
);

INSERT INTO classes (class_name) VALUES ("Mathematics"), ("Science"), ("History");
SELECT * FROM classes;

INSERT INTO stu (student_name, class_id) VALUES
('Alice', 1),
('Bob', 2),
('Charlie', 1);
SELECT * FROM stu;

SET autocommit = 0;
START TRANSACTION;
DELETE FROM classes WHERE class_id = 2;
SELECT * FROM stu;
ROLLBACK;

START TRANSACTION;
UPDATE classes SET class_id = 101 WHERE class_id = 1;
SELECT * FROM stu;
ROLLBACK;

SHOW CREATE TABLE stu;

SELECT 
    table_name, 
    column_name, 
    constraint_name, 
    referenced_table_name, 
    referenced_column_name
FROM 
    information_schema.key_column_usage
WHERE 
    referenced_table_name IS NOT NULL
    AND table_schema = 'DS';
