use join_test_db;



CREATE TABLE owners (
                        id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                        name VARCHAR(30) NOT NULL,
                        address VARCHAR(255) DEFAULT 'Undisclosed'
);

CREATE TABLE pets (
                      id INT UNSIGNED AUTO_INCREMENT,
                      pet_name VARCHAR(30) NOT NULL,
                      owner_id INT UNSIGNED DEFAULT NULL,
                      age INT,
                      PRIMARY KEY (id),
                      FOREIGN KEY (owner_id) REFERENCES owners(id)
);

show tables;

CREATE TABLE toys (
  id INT UNSIGNED AUTO_INCREMENT,
  type VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);
#
CREATE TABLE pets_toys (
  pet_id INT UNSIGNED,
  toy_id INT UNSIGNED,
  FOREIGN KEY (pet_id) REFERENCES pets(id),
  FOREIGN KEY (toy_id) REFERENCES toys(id)
);

INSERT INTO owners (name, address)
VALUES
('Darth Smith', '1138 Death Star Rd.'),
('Padme Smith', '1138 Death Star Rd.'),
('Luke Douglas', '18 Tatooine Ln.'),
('Lando Johnson', '777 Bespin Street');

INSERT INTO pets (pet_name, owner_id, age)
VALUES
('Spot', 1, 2),
('Puddle', 1, 2),
('Elrond', 1, 5),
('Mr. Pig', 2, 10),
('Mack', 2, 7),
('Bud', 3, 2),
('Bubbles', 4, 1);

show tables;

INSERT INTO toys (type)
VALUES
('ball'),
('bone'),
('squeaky toy'),
('rope');
#
INSERT INTO pets_toys (pet_id, toy_id)
VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 3),
(4, 2),
(4, 4);

select p.pet_name, p.age, o.name
from pets as p
join owners as o on p.owner_id = o.id;

SELECT p.pet_name, o.address
FROM pets AS p
JOIN owners AS o ON o.id = p.owner_id;

SELECT owners.address, COUNT(owners.address) AS `number of pets at address` FROM pets
JOIN owners ON owners.id = pets.owner_id
GROUP BY owners.address;

SELECT pets.pet_name, pets.age, owners.name
FROM pets
JOIN owners  on pets.owner_id = owners.id;

select owners.address, pets.age
from owners
join pets on owners.id = pets.owner_id;

select toys.type, pets.pet_name
from pets
join pets_toys  on pets.id = pets_toys.pet_id
join toys on pets_toys.toy_id = toys.id;




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

INSERT INTO users (name, email, role_id) VALUES
('bryan', 'bryan@example.com', 2),
('mark', 'mark@example.com', 2),
('matt', 'matt@example.com', 2),
('lemon', 'lemon@example.com', null);
show tables;

select roles.name, count(roles.name)
from users
left join roles on users.role_id = roles.id
group by roles.name;

