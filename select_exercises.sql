USE codeup_test_db;


SELECT name As 'This is all the Pink Floyd albums.' FROM albums
WHERE artist = 'Pink FLoyd';

SELECT release_date AS 'This is the year Sgt. Pepper\'s Lonely Hearts Club Band was released.' FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre AS'This is the genre of \'Neverminid\'.'  FROM albums
WHERE name = 'Nevermind';

SELECT name AS 'These albums were released in the \'90s.' FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

SELECT name AS 'These are the albums with sales under $20 million.' FROM albums
WHERE sales < 20;

SELECT name AS 'These are all the albums in the \'Rock\' genre.' FROM albums
WHERE genre = 'Rock';

