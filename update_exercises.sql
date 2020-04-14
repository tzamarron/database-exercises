USE codeup_test_db;

-- All albums in your table.
SELECT * FROM albums AS 'All albums in your table';
UPDATE albums SET sales = sales * 10;
SELECT * FROM albums AS 'All albums in your table with sales increased 10 times';

-- All albums released before 1980
SELECT * FROM albums WHERE release_date > 1980 AS 'All albums released before 1980';
UPDATE  albums SET release_date = 1800 WHERE release_date > 1980;
SELECT * FROM albums WHERE release_date > 1980 AS 'All albums released before 1980 changed to 1800';

-- All albums by Michael Jackson
SELECT * FROM albums WHERE artist = 'Michael Jackson' AS 'All albums by Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT * FROM albums WHERE artist = 'Peter Jackson' AS 'All albums by Peter Jackson';