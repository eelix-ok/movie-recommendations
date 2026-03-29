CREATE TABLE Users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL
);

CREATE TABLE Movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    description TEXT NOT NULL,
    user_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

CREATE TABLE Categories (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE Movie_categories (
    movie_id INTEGER,
    category_id INTEGER
);

CREATE TABLE Comments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    content TEXT,
    movie_id INTEGER,
    user_id INTEGER
);

CREATE TABLE Ratings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    rating INTEGER,
    movie_id INTEGER,
    user_id INTEGER
);