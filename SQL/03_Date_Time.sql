USE DS;

SELECT current_date;
SELECT current_time;
SELECT current_timestamp;
SELECT now();
SELECT localtime;
SELECT localtimestamp;

SELECT * FROM students;
ALTER TABLE students ADD COLUMN date_joined DATETIME DEFAULT (NOW());
INSERT INTO students (id, age, date_joined) VALUES (3, 54, NOW()); 