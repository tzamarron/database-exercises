USE codeup_test_db;

-- All albums in your table.
SELECT 'All albums in your table' AS '';
SELECT * FROM albums;
UPDATE albums SET sales = sales * 10;
SELECT 'All albums in your table with sales increased 10 times' AS '';
SELECT * FROM albums;

-- All albums released before 1980
SELECT 'All albums released before 1980' AS '';
SELECT * FROM albums WHERE release_date < 1980;
UPDATE  albums SET release_date = 1800 WHERE release_date < 1980;
SELECT 'All albums released before 1980 changed to 1800' AS '';
SELECT * FROM albums WHERE release_date < 1980;

-- All albums by Michael Jackson
SELECT 'All albums by Michael Jackson' AS '';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT 'All albums by Peter Jackson' AS '';
SELECT * FROM albums WHERE artist = 'Peter Jackson';
