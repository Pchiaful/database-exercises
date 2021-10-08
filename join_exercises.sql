USE employees;

SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager' FROM departments d JOIN dept_manager dm ON d.dept_no = dm.dept_no JOIN employees e ON dm.emp_no = e.emp_no WHERE to_date >= NOW() ORDER BY dept_name;

SELECT d.dept_name
    AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name)
    AS 'Department Manager'
FROM employees e
         JOIN dept_manager dm
              ON e.emp_no = dm.emp_no
         JOIN departments d
              ON dm.dept_no = d.dept_no
WHERE dm.to_date
    LIKE '9%'
  AND e.gender = 'F'
ORDER BY d.dept_name;

SELECT title, COUNT(title)
FROM titles t JOIN dept_emp de
                   ON t.emp_no = de.emp_no JOIN departments d
                                                ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service'
  AND t.to_date = '9999-01-01'
GROUP BY t.title;