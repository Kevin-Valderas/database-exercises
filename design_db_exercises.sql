DROP DATABASE IF EXISTS design_db;

CREATE DATABASE design_db;

SHOW DATABASES;

USE design_db;



CREATE TABLE users(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(50) NOT NULL,
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

CREATE TABLE categories(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    goods VARCHAR(150) NULL,
    services VARCHAR(150) NULL,
    PRIMARY KEY (id)
);


INSERT INTO users (email, password) VALUES
                                        ('kyle@example.com', 'password123'),
                                        ('skye@example.com', 'password123'),
                                        ('patrick@example.com', 'password123'),
                                        ('serguio@example.com', 'password123');
SELECT * FROM users;

INSERT INTO ads (title, description, category, user_id) VALUES
                                                            ('Title1', 'Description1', 'Category1', 1),
                                                            ('Title2', 'Description2', 'Category2', 2),
                                                            ('Title3', 'Description3', 'Category3', 3),
                                                            ('Title4', 'Description4', 'Category4', 4);

SELECT * FROM ads;

INSERT INTO categories (goods, services) VALUES
                                             (NULL,'lawn mower'),
                                             (NULL,'babysitter'),
                                             ('furniture', NULL),
                                             ('vehicles', NULL);

SELECT * FROM categories;