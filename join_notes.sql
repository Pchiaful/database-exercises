CREATE DATABASE join_test_db;

USE join_test_db;

CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
                                             ('bob', 'bob@example.com', 1),
                                             ('joe', 'joe@example.com', 2),
                                             ('sally', 'sally@example.com', 3),
                                             ('adam', 'adam@example.com', 3),
                                             ('jane', 'jane@example.com', null),
                                             ('mike', 'mike@example.com', null);

SELECT users.name, roles.name FROM roles JOIN users ON roles.id = users.role_id;

SELECT users.name, roles.name FROM users LEFT JOIN roles ON roles.id = users.role_id;

SELECT users.name, roles.name FROM users RIGHT JOIN roles ON roles.id = users.role_id;

SELECT roles.name AS role, COUNT(users.name) AS 'users with role' FROM users RIGHT JOIN roles ON roles.id = users.role_id
GROUP BY roles.name ORDER BY COUNT(users.name);

INSERT INTO users (name, email, role_id) VALUES
                                             ('carol', 'carol@example.com', 2),
                                             ('trey', 'trey@example.com', 2),
                                             ('curt', 'curt@example.com', 2),
                                             ('ally', 'ally@example.com', null);

USE codeup_test_db;

INSERT INTO persons (first_name, album_id) VALUES ('Olivia', 29), ('Santiago', 27), ('Tareq', 15), ('Anaya', 28);

SELECT * FROM persons;

SELECT first_name, name AS 'fav album' FROM persons JOIN albums ON persons.album_id = albums.id;