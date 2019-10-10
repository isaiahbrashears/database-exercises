USE codeup_test_db;


SELECT 'All Albums' AS 'Info';
SELECT * from albums;
UPDATE albums
SET sales = sales * 10;
SELECT * from albums;

SELECT 'All Albums Before 1980' AS 'Info';
SELECT * FROM albums where release_date < 1980;
UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;
SELECT * FROM albums where release_date < 1980;

SELECT 'All Mike Jackson Albums' AS 'Info';
SELECT * From albums where artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT * From albums where artist = 'Peter Jackson';




