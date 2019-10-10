USE codeup_test_db;

# Should show dark side of the moon and the wall
SELECT name from albums where artist = 'Pink Floyd';

#The year Sgt. Pepper's Lonely Hearts Club Band was released

SELECT release_date from albums where name = 'Sgt. Pepper''s Lonely Hearts Club Band';

# The genre for Nevermind
SELECT genre from albums where name = 'Nevermind';

# Which albums were released in the 1990s
SELECT * from albums where release_date BETWEEN  1989 AND  2000;

# Which albums had less than 20 million certified sales
SELECT * from albums where sales < 20;

# All the albums with a genre of
# "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT * from albums where genre = 'Rock';
