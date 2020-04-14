USE codeup_test_db;

-- Albums released after 1991
SELECT 'Albums released after 1981' AS '';
SELECT * FROM albums WHERE release_date > 1991;

-- Albums with the genre 'disco'
SELECT 'Albums with the genre "disco"' AS '';
SELECT * FROM albums WHERE genre LIKE 'disco';

-- Albums by 'Whitney Houston' (...or maybe an artist of your choice)
SELECT 'Albums by The Eagles' AS '';
SELECT * FROM albums WHERE artist = 'The Eagles';
