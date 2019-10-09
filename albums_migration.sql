USE codeup_test_db;

CREATE TABLE albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id),
    artist VARCHAR(250),
    name VARCHAR(100),
    release_date int(4),
    sales FLOAT(5,2),
    genre VARCHAR(100)
);