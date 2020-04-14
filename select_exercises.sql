USE codeup_test_db;

-- The name of all albums by Pink Floyd.
SELECT * FROM quotes WHERE artist = 'Pink Floyd' AS 'The name of all albums by Pink Floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date FROM quotes WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band' AS 'The year Sgt. Pepper''s Lonely Hearts Club Band was released';

-- The genre for Nevermind
SELECT genre FROM quotes WHERE name = 'Nevermind' AS 'The genre for Nevermind';

-- Which albums were released in the 1990s
SELECT albums FROM quotes WHERE release_date BETWEEN 1990 and 1999 AS 'Which albums were released in the 1990s';

-- Which albums had less than 20 million certified sales
SELECT albums FROM quotes WHERE sales < 20 AS 'Which albums had less than 20 million certified sales';

-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT albums FROM quotes WHERE genre LIKE 'ROCK' AS 'All the albums with a genre of "Rock"';