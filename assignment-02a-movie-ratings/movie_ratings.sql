-- SQL Database 
DROP TABLE IF EXISTS ratings;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    user_id INTEGER PRIMARY KEY,
    respondent_label TEXT NOT NULL UNIQUE
);

CREATE TABLE movies (
    movie_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL UNIQUE
);

CREATE TABLE ratings (
    user_id INTEGER NOT NULL,
    movie_id INTEGER NOT NULL,
    rating INTEGER,
    PRIMARY KEY (user_id, movie_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    CHECK (rating IS NULL OR rating BETWEEN 1 AND 5)
);
