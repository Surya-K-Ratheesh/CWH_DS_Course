USE DS;

SELECT first_name, department, salary, ROUND(DATEDIFF(NOW(), hire_date)/365, 0) AS years from employees;

CREATE VIEW fdsy 
AS SELECT first_name, department, salary, ROUND(DATEDIFF(NOW(), hire_date)/365, 0) 
AS years from employees;

SELECT * FROM fdsy;

CREATE VIEW public_emp
AS SELECT first_name, department, salary
FROM employees;

SELECT * FROM public_emp WHERE salary > 55000;

-- UPDATING VIEW
CREATE OR REPLACE VIEW public_emp
AS SELECT first_name, last_name, department, salary
FROM employees;

DROP VIEW fdsy;