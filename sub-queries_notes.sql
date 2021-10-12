USE employees;

SELECT emp_no From dept_manager;

SELECT birth_date, CONCAT(first_name, ' ', last_name) FROM employees
WHERE emp_no IN (
    SELECT emp_no FROM dept_manager
        );
# -----------------------------------------------------------------------------------------------------------------------
USE codeup_test_db;

CREATE TABLE preferences (
                             person_id INT UNSIGNED NOT NULL,
                             album_id INT UNSIGNED NOT NULL,
                             FOREIGN KEY (person_id) REFERENCES persons(id),
                             FOREIGN KEY (album_id) REFERENCES albums(id)
);

INSERT INTO preferences (person_id, album_id) VALUES (1, 12), (1, 5), (1, 22), (1, 29), (2, 1), (2, 31), (2, 30), (3, 11), (3, 26), (3, 25);

INSERT INTO preferences (person_id, album_id) VALUES ((SELECT id FROM persons WHERE first_name = 'Tareq'), (SELECT id FROM albums WHERE name = '1'));

UPDATE preferences
SET album_id = (SELECT id FROM albums WHERE name = 'Led Zeppelin IV')
WHERE album_id = (SELECT id FROM albums WHERE name = '1')
  AND person_id = (SELECT id FROM persons WHERE first_name = 'Tareq');
# -----------------------------------------------------------------------------------------------------------------------
