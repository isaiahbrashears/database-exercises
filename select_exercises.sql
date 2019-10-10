USE codeup_test_db;

SELECT 'Shows Pink floyd albums' AS 'Info';
SELECT name from albums where artist = 'Pink Floyd';


SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'Info';
SELECT release_date from albums where name = 'Sgt. Pepper''s Lonely Hearts Club Band';


SELECT 'The genre for Nevermind' AS 'Info';
SELECT genre from albums where name = 'Nevermind';


SELECT 'Which albums were released in the 1990s' AS 'Info';
SELECT * from albums where release_date BETWEEN  1989 AND  2000;


SELECT ' Which albums had less than 20 million certified sales' AS 'Info';
SELECT * from albums where sales < 20;


SELECT 'All the albums with a genre of "Rock"' AS 'Info';
SELECT * from albums where genre = 'Rock';
