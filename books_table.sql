USE codeup_test_db;

DROP TABLE IF EXISTS books;

CREATE TABLE books(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    author VARCHAR(50) DEFAULT 'Unknown',
    date_published INT(4) NOT NULL,
    description VARCHAR(4000),
    bestseller_weeks INT DEFAULT 0,
    PRIMARY KEY (id)
);