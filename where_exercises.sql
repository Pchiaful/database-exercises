USE employees;

SELECT * FROM employees
WHERE first_name LIKE 'Irena'
    OR first_name LIKE 'Vidya'
    OR first_name LIKE 'Maya';


SELECT * FROM employees
WHERE last_name LIKE 'e%';

SELECT * FROM employees
WHERE last_name LIKE '%q%';

SELECT * FROM employees
WHERE last_name LIKE '%e' OR 'e%';

SELECT * FROM employees
WHERE last_name LIKE 'e%' AND '%e';

SELECT * FROM employees
WHERE last_name LIKE '%q%'
    AND last_name NOT LIKE '%qu%';