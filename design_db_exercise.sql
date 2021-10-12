CREATE DATABASE design_db;

DROP DATABASE design_db;

SHOW DATABASES;

USE design_db;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL ,
    password VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(150) NOT NULL,
    description TINYTEXT NOT NULL,
    category VARCHAR(75) NOT NULL,
    user_id INT UNSIGNED,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

SELECT * FROM ads;

CREATE TABLE categories (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    goods VARCHAR(100) NULL,
    services VARCHAR(150) NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ad_category (
    ad_id INT UNSIGNED NOT NULL,
    category_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (ad_id) REFERENCES ads (id),
    FOREIGN KEY (category_id) REFERENCES categories (id)
);

INSERT INTO users (email, password) VALUES
    ('kyle@example.com', 'password123'),
    ('pat@example.com', 'password1234'),
    ('serguio@example.com', 'password1235'),
    ('skye@example.com', 'password1236');

SELECT * FROM users;

INSERT INTO ads (title, description, category, user_id) VALUES
    ('title1', 'description', 'category1', 1),
    ('title2', 'description', 'category2', 2),
    ('title3', 'description', 'category3', 3),
    ('title4', 'description', 'category1', 4);

SELECT * FROM ads;

INSERT INTO categories (goods, services) VALUES
    (NULL, 'lawn care'),
    (NULL, 'babysitter'),
    (NULL, 'arbor care'),
    ('car parts', 'NULL'),
    ('kittens', 'NULL'),
    ('furniture', 'NULL');

SELECT * FROM categories;

SELECT u.email FROM users u
    JOIN ads a ON u.id = a.user_id
WHERE a.title = 'title2';

SELECT a.title, c.goods, c.services FROM categories c
    JOIN ads a on c.id = a.id
WHERE a.id = 2;

SELECT a.category FROM categories c
    JOIN ad_category ac on c.id = ac.category_id
    JOIN ads a on ac.ad_id = a.id
WHERE a.

