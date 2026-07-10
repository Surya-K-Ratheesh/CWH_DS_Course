USE DS;

SELECT student_id from marks
UNION
SELECT id from stud;

CREATE TABLE employees (
employee_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
department VARCHAR (50),
hire_date DATE,
salary DECIMAL(10, 2),
is_active TINYINT(1)
);

INSERT INTO employees (first_name, last_name, department, hire_date, salary, is_active) VALUES
('Alice', 'Johnson', 'Engineering', '2020-03-15', 75000.00, 1), 
('Bob', 'Smith', 'Marketing', '2019-07-01', 68000.00, 1), 
('Charlie', 'Davis', 'Finance', '2021-01-20', 72000.00, 1), 
('Dana', 'Lee', 'Human Resources', '2018-11-05', 66000.90, 0), 
('Evan', 'Taylor', 'Engineering', '2022-06-10', 80000.00, 1), 
('Fiona', 'Clark', 'Sales', '2023-02-25', 62000.00, 1), 
('George', 'Wright', 'IT Support', '2017-09-12', 59000.00, 0);

SELECT * FROM employees;

CREATE TABLE emp_personal(
	personal_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
	date_of_birth DATE,
	phone_number VARCHAR (15),
	email VARCHAR (100),
	address TEXT,
    marital_status VARCHAR(20),
	FOREIGN KEY (employee_id) REFERENCES employees (employee_id)
);

INSERT INTO emp_personal (employee_id, date_of_birth, phone_number, email, address, marital_status) VALUES
(1, '1987-05-21', '555-1234', 'alice.johnson@example.com', '123 Elm St, Springfield', 'Single'),
(2, '1987-09-14', '555-5678', 'bob.smith@example.com', '456 Oak St, Springfield', 'Married'),
(3, '1992-11-02', '555-8765', 'charlie.davis@example.com', '789 Pine St, Springfield', 'Single'),
(4, '1985-03-30', '555-2345', 'dana.lee@example.com', '321 Maple St, Springfield', 'married'),
(5, '1995-08-10', '555-3456', 'evan.taylor@example.com', '654 Cedar St, Springfield', 'Single'),
(6, '1998-12-25', '555-9876', 'fiona.clark@example.com', '987 Birch St, Springfield', 'Single'),
(1, '1983-04-18', '555-1122', 'george.wright@example.com', '159 Walnut St, Springfield', 'Divorced');

-- NO DUPLICATES 
SELECT email, address FROM emp_personal
UNION
SELECT first_name, last_name FROM employees;

-- DUPLICATES 
SELECT email, address FROM emp_personal
UNION ALL
SELECT first_name, last_name FROM employees;