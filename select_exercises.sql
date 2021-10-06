USE codeup_test_db;

SELECT name from codeup_test_db.albums where artist_name = 'Pink Floyd';

SELECT release_date from codeup_test_db.albums where name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT genre from codeup_test_db.albums where name = 'Nevermind';

SELECT name from codeup_test_db.albums where release_date BETWEEN 1990 and 1999;

SELECT name from codeup_test_db.albums where sales < '20';

SELECT name from codeup_test_db.albums where genre = 'Rock';
