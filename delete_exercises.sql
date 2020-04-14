USE codeup_test_db;

-- Albums released after 1991
SELECT * FROM albums WHERE release_date > 1991 AS 'Albums released after 1981';

-- Albums with the genre 'disco'
SELECT * FROM albums WHERE genre LIKE 'disco' AS 'Albums with the genre "disco" ';

-- Albums by 'Whitney Houston' (...or maybe an artist of your choice)
SELECT * FROM albums WHERE artist = 'The Eagles' AS 'Albums by The Eagles';
