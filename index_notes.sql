USE codeup_test_db;

ALTER TABLE albums ADD UNIQUE (artist, name);

SELECT * FROM albums;

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Michael Jackson', 'Thriller', 1982,'Pop, post-disco, funk, rock', 48.9);

CREATE TABLE different_quotes (
        id INT NOT NULL AUTO_INCREMENT,
        content VARCHAR(240) NOT NULL,
        author VARCHAR(50) NOT NULL, PRIMARY KEY (id)
);

INSERT INTO quotes (content, author)
VALUES ('The real voyage of discovery consists not in seeking new landscapes, but in having new eyes.', 'Marcel Proust');

INSERT INTO different_quotes (content, author)
VALUES ('The real voyage of discovery consists not in seeking new landscapes, but in having new eyes.', 'Marcel Proust');

ALTER TABLE different_quotes ADD UNIQUE (content);

USE employees;

SHOW TABLES;

DESCRIBE departments;

DESCRIBE dept_emp;

DESCRIBE dept_manager;

DESCRIBE employees;

DESCRIBE salaries;

DESCRIBE titles;