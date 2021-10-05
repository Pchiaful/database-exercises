USE employees;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') AND gender = 'M'
ORDER BY last_name, first_name;


SELECT * FROM employees
WHERE last_name LIKE 'e%';

SELECT * FROM employees
WHERE last_name LIKE '%q%';

SELECT * FROM employees
WHERE last_name LIKE '%e' OR 'e%';

SELECT * FROM employees
WHERE last_name LIKE 'e%' AND '%e';

SELECT * FROM employees
WHERE last_name LIKE '%q%' NOT '%qu%';