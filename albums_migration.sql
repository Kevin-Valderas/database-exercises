USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist_name VARCHAR(50) NOT NULL,
                        name VARCHAR(100) NOT NULL,
                        release_date INT NOT NULL,
                        genre TEXT NOT NULL,
                        sales FLOAT NOT NULL,
                        PRIMARY KEY (id)
);