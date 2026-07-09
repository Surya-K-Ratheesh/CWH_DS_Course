USE DS;

SELECT * FROM students;
ALTER TABLE students DROP COLUMN gender;

SELECT @@autocommit;
SET autocommit = 0;

INSERT INTO students VALUES (1, 22, '7suryakr@gmaail.com', true, 'Surya');
UPDATE students SET email = '7suryakr@gmail.com' WHERE email = '7suryakr@gmaail.com';

INSERT INTO students VALUES (2, 24, 'cris@gmail.com', false, 'Cris');

START TRANSACTION;
UPDATE students SET age = age + 1 WHERE id = 1;
UPDATE students SET age = age - 1 WHERE id = 2;

ROLLBACK; 
COMMIT;