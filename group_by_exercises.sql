USE employees;

SELECT DISTINCT title FROM titles;

SELECT last_name FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name
ORDER BY last_name ASC;

SELECT first_name, last_name FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name
ORDER BY last_name ASC;

SELECT last_name FROM employees
WHERE last_name LIKE '%q%' NOT LIKE '%qu%';