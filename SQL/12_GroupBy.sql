USE DS;

-- GROUP BY
SELECT department, count(*), ROUND(AVG(salary), 2) AS total FROM employees GROUP BY department;

-- GROUP BY HAVING 
SELECT department, count(*), ROUND(AVG(salary), 2) AS total FROM employees GROUP BY department HAVING total >= 50000;

-- GROUP BY ROLLUP 
SELECT department, count(*), ROUND(AVG(salary), 2) AS total FROM employees GROUP BY department WITH ROLLUP;