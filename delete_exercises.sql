USE codeup_test_db;

DELETE name, release_date FROM albums
WHERE release_date > 1991;

DELETE name, genre FROM albums
WHERE genre = 'disco';

DELETE name, artist FROM albums
WHERE artist = 'Fleetwood Mac';