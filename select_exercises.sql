USE codeup_test_db;

-- The name of all albums by Pink Floyd.
SELECT 'The name of all albums by Pink Floyd' AS '';
SELECT * FROM albums WHERE artist = 'Pink Floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS '';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- The genre for Nevermind
SELECT 'The genre for Nevermind' AS '';
SELECT genre FROM albums WHERE name = 'Nevermind';

-- Which albums were released in the 1990s
SELECT 'Albums that were released in the 1990s' AS '';
SELECT * FROM albums WHERE release_date BETWEEN 1990 and 1999;

-- Which albums had less than 20 million certified sales
SELECT 'Albums that had less than 20 miliion ceritified sales' AS '';
SELECT * FROM albums WHERE sales < 20;

-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT 'Albums with the genre of "Rock"' AS '';
SELECT * FROM albums WHERE genre LIKE 'ROCK';