USE codeup_test_db;

CREATE TABLE albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id),
    artist VARCHAR(100),
    name VARCHAR(100),
    release_date DATE,
    sales DECIMAL(10,2),
    genre VARCHAR(100)
);