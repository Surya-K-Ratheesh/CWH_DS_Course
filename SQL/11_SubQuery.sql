USE DS;

SELECT * FROM employees;

SELECT first_name, last_name, salary 
FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employees);

-- Salary >= AVG dept salary  
SELECT first_name, last_name, salary 
FROM employees e
WHERE salary >= (
	SELECT AVG(salary) FROM employees WHERE department = e.department
);