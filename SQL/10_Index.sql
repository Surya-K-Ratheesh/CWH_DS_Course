USE DS;

SELECT * FROM employees WHERE department = "Engineering";
-- Change in Speed when data is too large -> index makes data retrieval faster  
CREATE INDEX idx ON employees(department);

SELECT * FROM employees WHERE department = "Engineering" AND is_active = 1;
CREATE INDEX idx_dept_active ON employees(department, is_active);

DROP INDEX idx ON employees;

SHOW INDEX FROM employees;