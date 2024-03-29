USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(250) NOT NULL,
    name VARCHAR(100) NOT NULL,
    release_date int(4) UNSIGNED,
    sales FLOAT(5,2) UNSIGNED,
    genre VARCHAR(255),
    UNIQUE (artist, name),
    PRIMARY KEY (id)
);