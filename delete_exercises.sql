USE codeup_test_db;

-- Albums released after 1991
SELECT 'Albums released after 1981' AS '';
SELECT * FROM albums WHERE release_date > 1981;
DELETE * FROM albums WHERE release_date > 1981;

-- Albums with the genre 'disco'
SELECT 'Albums with the genre "disco"' AS '';
SELECT * FROM albums WHERE genre LIKE 'disco';
DELETE * FROM albums WHERE genre LIKE 'disco';

-- Albums by 'Whitney Houston' (...or maybe an artist of your choice)
SELECT 'Albums by The Eagles' AS '';
SELECT FROM albums WHERE artist = 'Eagles';
DELETE FROM albums WHERE artist = 'Eagles';