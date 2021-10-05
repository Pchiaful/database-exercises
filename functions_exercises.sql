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

SELECT CONCAT (first_name, ' ', last_name) AS 'Full Name' FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

SELECT CONCAT (first_name, ' ', last_name)AS 'Full Name', birth_date AS 'Birthdate'FROM employees
WHERE MONTH(birth_date) = 12 AND DAY (birth_date) =25;

SELECT CONCAT (first_name, ' ', last_name)AS 'Full Name', birth_date AS 'Birth date', hire_date AS 'Hire date' FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
  AND DAY (birth_date) = 25 AND MONTH(birth_date) = 12
ORDER BY birth_date, hire_date DESC;

SELECT DATEDIFF(now(),hire_date) AS 'Days worked', CONCAT (first_name, ' ', last_name)AS 'Full Name', birth_date AS 'Birthdate' FROM employees
WHERE MONTH(birth_date) = 12 AND DAY (birth_date) =25;


SELECT * FROM employees
WHERE last_name LIKE '%q%' NOT '%qu%';