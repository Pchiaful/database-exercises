USE employees;

SELECT hire_date, CONCAT(first_name, ' ', last_name), emp_no FROM employees
WHERE emp_no IN (
    SELECT emp_no FROM employees
    WHERE hire_date = 1990
);

SELECT * FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
    );

SELECT title, COUNT(*) FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = "Aamod"
    )
GROUP BY title;

SELECT first_name, last_name
FROM employees
WHERE  gender = 'F' AND emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > NOW()
    );

SELECT dept_name
FROM departments
WHERE  dept_name IN (
    SELECT dept_no
    FROM dept_manager
    WHERE to_date > NOW()
    AND emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'F'
        )
    );