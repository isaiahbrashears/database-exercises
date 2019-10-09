USE codeup_test_db;

CREATE TABLE books(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id),
    title VARCHAR(50) NOT NULL,
    author VARCHAR(50) DEFAULT 'Unknown',
    date_published DATE NOT NULL,
    description VARCHAR(4000),
    bestseller_weeks INT DEFAULT 0
);