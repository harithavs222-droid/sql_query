-- 1. Create and switch to database
CREATE DATABASE IF NOT EXISTS movie_db;
USE movie_db;

-- 2. Create movie table
DROP TABLE IF EXISTS movie;
CREATE TABLE movie (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    genre VARCHAR(50),
    release_year INT,
    rating DECIMAL(3, 1),
    director VARCHAR(100),
    box_office_collection DECIMAL(15, 2)
);

-- 3. Insert 50 records
INSERT INTO movie (title, genre, release_year, rating, director, box_office_collection) VALUES
('Inception', 'Sci-Fi', 2010, 8.8, 'Christopher Nolan', 836.8),
('The Matrix', 'Sci-Fi', 1999, 8.7, 'Wachowski', 467.2),
('Interstellar', 'Sci-Fi', 2014, 8.6, 'Christopher Nolan', 701.7),
('Parasite', 'Thriller', 2019, 8.6, 'Bong Joon Ho', 263.1),
('Gladiator', 'Action', 2000, 8.5, 'Ridley Scott', 460.5),
('The Dark Knight', 'Action', 2008, 9.0, 'Christopher Nolan', 1005.0),
('Pulp Fiction', 'Crime', 1994, 8.9, 'Quentin Tarantino', 213.9),
('Fight Club', 'Drama', 1999, 8.8, 'David Fincher', 101.2),
('Forrest Gump', 'Drama', 1994, 8.8, 'Robert Zemeckis', 678.2),
('The Matrix Reloaded', 'Sci-Fi', 2003, 7.2, 'Wachowski', 741.8),
('Avatar', 'Sci-Fi', 2009, 7.9, 'James Cameron', 2923.7),
('Titanic', 'Romance', 1997, 7.9, 'James Cameron', 2257.0),
('Joker', 'Drama', 2019, 8.4, 'Todd Phillips', 1074.0),
('Avengers: Endgame', 'Action', 2019, 8.4, 'Russo Brothers', 2797.5),
('Toy Story', 'Animation', 1995, 8.3, 'John Lasseter', 373.6),
('Coco', 'Animation', 2017, 8.4, 'Lee Unkrich', 807.1),
('Spirited Away', 'Animation', 2001, 8.6, 'Hayao Miyazaki', 395.8),
('Seven', 'Crime', 1995, 8.6, 'David Fincher', 327.3),
('The Silence of the Lambs', 'Thriller', 1991, 8.6, 'Jonathan Demme', 272.7),
('Saving Private Ryan', 'War', 1998, 8.6, 'Steven Spielberg', 481.8),
('The Green Mile', 'Drama', 1999, 8.6, 'Frank Darabont', 286.8),
('Leon: The Professional', 'Action', 1994, 8.5, 'Luc Besson', 46.1),
('The Prestige', 'Sci-Fi', 2006, 8.5, 'Christopher Nolan', 109.7),
('The Lion King', 'Animation', 1994, 8.5, 'Roger Allers', 968.5),
('Django Unchained', 'Western', 2012, 8.4, 'Quentin Tarantino', 425.4),
('Memento', 'Thriller', 2000, 8.4, 'Christopher Nolan', 39.7),
('WALL-E', 'Animation', 2008, 8.4, 'Andrew Stanton', 533.3),
('Batman Begins', 'Action', 2005, 8.2, 'Christopher Nolan', 373.4),
('Blade Runner 2049', 'Sci-Fi', 2017, 8.0, 'Denis Villeneuve', 259.2),
('Dune', 'Sci-Fi', 2021, 8.0, 'Denis Villeneuve', 407.6),
('Up', 'Animation', 2009, 8.2, 'Pete Docter', 735.1),
('Finding Nemo', 'Animation', 2003, 8.1, 'Andrew Stanton', 940.3),
('Inside Out', 'Animation', 2015, 8.1, 'Pete Docter', 857.6),
('The Truman Show', 'Drama', 1998, 8.2, 'Peter Weir', 264.1),
('Shutter Island', 'Thriller', 2010, 8.2, 'Martin Scorsese', 294.8),
('Inglourious Basterds', 'War', 2009, 8.3, 'Quentin Tarantino', 321.5),
('Kill Bill: Vol. 1', 'Action', 2003, 8.2, 'Quentin Tarantino', 180.9),
('Taxi Driver', 'Drama', 1976, 8.2, 'Martin Scorsese', 28.6),
('Mad Max: Fury Road', 'Action', 2015, 8.1, 'George Miller', 375.4),
('Logan', 'Action', 2017, 8.1, 'James Mangold', 619.2),
('Gone Girl', 'Thriller', 2014, 8.1, 'David Fincher', 369.3),
('The Wolf of Wall Street', 'Biography', 2013, 8.2, 'Martin Scorsese', 406.9),
('Grand Budapest Hotel', 'Comedy', 2014, 8.1, 'Wes Anderson', 172.9),
('Arrival', 'Sci-Fi', 2016, 7.9, 'Denis Villeneuve', 203.4),
('Gravity', 'Sci-Fi', 2013, 7.7, 'Alfonso Cuarón', 723.2),
('Jaws', 'Thriller', 1975, 8.1, 'Steven Spielberg', 476.5),
('Jurassic Park', 'Sci-Fi', 1993, 8.2, 'Steven Spielberg', 1046.0),
('Alien', 'Horror', 1979, 8.5, 'Ridley Scott', 184.7),
('The Shining', 'Horror', 1980, 8.4, 'Stanley Kubrick', 47.0),
('Psycho', 'Horror', 1960, 8.5, 'Alfred Hitchcock', 50.0);

-- 4. ASSESSMENT QUESTIONS

-- Task A: Projections
-- 1. Display the title and release_year of all movies.
-- 2. Display all unique directors present in the table.

-- Task B: Filtering (Where Clause)
-- 3. Find all movies released in the year 2019.
-- 4. Find all movies with a rating greater than 8.0.

-- Task C: Logical Operators (And/Or/Not)
-- 5. Display all 'Sci-Fi' movies that have a rating higher than 8.5.
-- 6. List movies directed by either 'Christopher Nolan' or 'Martin Scorsese'.
-- 7. Show all movies that are NOT in the 'Drama' genre.

-- Task D: Sorting, Limiting, and Offsetting
-- 8. List all movies sorted by their box_office_collection in ascending order.
-- 9. Display the top 5 highest-rated movies.
-- 10. Retrieve the 3rd highest-rated movie (Hint: Use limit and offset).
-- 11. Retrieve the movie with the lowest rating using sorting and limit.

-- Task E: Pattern Matching (LIKE operator)
-- 12. Find all movies that contain the word "The" in their title.
-- 13. Display all movies where the director's name starts with the letter 'S'.

-- Task F: Range and Membership (BETWEEN and IN operators)
-- 14. Find all movies released between the years 2010 and 2020.
-- 15. Display movies with a rating between 7.5 and 8.5.
-- 16. List all movies that belong to either the 'Action', 'Thriller', or 'Horror' genres.

-- Task G: Aggregate Functions and Grouping
-- 17. Count the total number of movies in the database.
-- 18. Calculate the average rating of all movies in the 'Animation' genre.
-- 19. Find the maximum box office collection among all movies.

-- Task H: Advanced Filtering
-- 20. Find all movies directed by 'Christopher Nolan' that have a box office collection greater than 500 million, ordered by release year.
