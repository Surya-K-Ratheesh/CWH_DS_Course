USE DS;

DELIMITER //
CREATE PROCEDURE list_employees()
BEGIN
	SELECT * FROM employees;
	SELECT first_name FROM employees;
END //
DELIMITER ;

CALL list_employees();

DELIMITER //
CREATE PROCEDURE get_emp_idd(IN emp_id INT)
BEGIN
	SELECT * FROM employees WHERE employee_id = emp_id;
    SELECT first_name FROM employees;
END //
DELIMITER ;

CALL get_emp_idd(3);

DROP PROCEDURE IF EXISTS get_emp_id;