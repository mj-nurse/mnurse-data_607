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

INSERT INTO users (user_id, respondent_label)
VALUES
    (1, 'Person 1'),
    (2, 'Person 2'),
    (3, 'Person 3'),
    (4, 'Person 4'),
    (5, 'Person 5'),
    (6, 'Person 6'),
    (7, 'Person 7'),
    (8, 'Person 8'),
    (9, 'Person 9'),
    (10, 'Person 10'),
    (11, 'Person 11'),
    (12, 'Person 12'),
    (13, 'Person 13'),
    (14, 'Person 14'),
    (15, 'Person 15'),
    (16, 'Person 16'),
    (17, 'Person 17'),
    (18, 'Person 18'),
    (19, 'Person 19'),
    (20, 'Person 20'),
    (21, 'Person 21'),
    (22, 'Person 22');

INSERT INTO movies (movie_id, title)
VALUES
    (1, 'The Drama'),
    (2, 'Michael'),
    (3, 'Obsession'),
    (4, 'Backrooms'),
    (5, 'The Odyssey'),
    (6, 'Spider-Man: Brand New Day');

INSERT INTO ratings (user_id, movie_id, rating)
VALUES
    -- Person 1
    (1, 1, 4),
    (1, 2, 3),
    (1, 3, 5),
    (1, 4, 4),
    (1, 5, 5),
    (1, 6, 3),

    -- Person 2
    (2, 1, NULL),
    (2, 2, 4),
    (2, 3, 2),
    (2, 4, NULL),
    (2, 5, NULL),
    (2, 6, 4),

    -- Person 3
    (3, 1, NULL),
    (3, 2, 4),
    (3, 3, 5),
    (3, 4, NULL),
    (3, 5, 5),
    (3, 6, 5),

    -- Person 4
    (4, 1, NULL),
    (4, 2, NULL),
    (4, 3, 4),
    (4, 4, NULL),
    (4, 5, NULL),
    (4, 6, 4),

    -- Person 5
    (5, 1, 4),
    (5, 2, 4),
    (5, 3, 5),
    (5, 4, 3),
    (5, 5, 5),
    (5, 6, 4),

    -- Person 6
    (6, 1, 3),
    (6, 2, NULL),
    (6, 3, NULL),
    (6, 4, 2),
    (6, 5, 4),
    (6, 6, 5),

    -- Person 7
    (7, 1, 4),
    (7, 2, NULL),
    (7, 3, 5),
    (7, 4, 5),
    (7, 5, NULL),
    (7, 6, NULL),

    -- Person 8
    (8, 1, NULL),
    (8, 2, NULL),
    (8, 3, NULL),
    (8, 4, NULL),
    (8, 5, 4),
    (8, 6, NULL),

    -- Person 9
    (9, 1, NULL),
    (9, 2, NULL),
    (9, 3, 2),
    (9, 4, NULL),
    (9, 5, 1),
    (9, 6, 3),

    -- Person 10
    (10, 1, 5),
    (10, 2, 5),
    (10, 3, 5),
    (10, 4, 4),
    (10, 5, NULL),
    (10, 6, 5),

    -- Person 11
    (11, 1, NULL),
    (11, 2, 5),
    (11, 3, 5),
    (11, 4, NULL),
    (11, 5, 5),
    (11, 6, 5),

    -- Person 12
    (12, 1, 3),
    (12, 2, 4),
    (12, 3, 4),
    (12, 4, NULL),
    (12, 5, NULL),
    (12, 6, 5),

    -- Person 13
    (13, 1, 3),
    (13, 2, 4),
    (13, 3, 4),
    (13, 4, 3),
    (13, 5, 3),
    (13, 6, 4),

    -- Person 14
    (14, 1, NULL),
    (14, 2, NULL),
    (14, 3, 4),
    (14, 4, NULL),
    (14, 5, NULL),
    (14, 6, 5),

    -- Person 15
    (15, 1, 5),
    (15, 2, 4),
    (15, 3, NULL),
    (15, 4, NULL),
    (15, 5, NULL),
    (15, 6, NULL),

    -- Person 16
    (16, 1, NULL),
    (16, 2, 1),
    (16, 3, 4),
    (16, 4, 3),
    (16, 5, 5),
    (16, 6, 3),

    -- Person 17
    (17, 1, 3),
    (17, 2, 3),
    (17, 3, 3),
    (17, 4, 3),
    (17, 5, 4),
    (17, 6, 3),

    -- Person 18
    (18, 1, 3),
    (18, 2, NULL),
    (18, 3, 3),
    (18, 4, 1),
    (18, 5, 5),
    (18, 6, 2),

    -- Person 19
    (19, 1, NULL),
    (19, 2, NULL),
    (19, 3, NULL),
    (19, 4, NULL),
    (19, 5, 4),
    (19, 6, 5),

    -- Person 20
    (20, 1, NULL),
    (20, 2, 3),
    (20, 3, 4),
    (20, 4, NULL),
    (20, 5, NULL),
    (20, 6, NULL),

    -- Person 21
    (21, 1, 3),
    (21, 2, NULL),
    (21, 3, 4),
    (21, 4, NULL),
    (21, 5, NULL),
    (21, 6, 3),

    -- Person 22
    (22, 1, 3),
    (22, 2, 2),
    (22, 3, 3),
    (22, 4, 3),
    (22, 5, 4),
    (22, 6, 2);
