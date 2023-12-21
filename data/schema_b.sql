CREATE TABLE labels (
  id INTEGER PRIMARY KEY,
  title VARCHAR(50),
  color VARCHAR(50)
);

CREATE TABLE items (
  id INTEGER PRIMARY KEY,
  genre_id INT REFERENCES genres(id),
  author_id INT REFERENCES authors(id),
  source_id INT REFERENCES sources(id),
  label_id INT REFERENCES labels(id),
  publish_date DATE,
  archived BOOLEAN
);

CREATE TABLE books (
  id INT PRIMARY KEY REFERENCES items(id),
  publisher VARCHAR(50),
  cover_state VARCHAR(50)
);

CREATE TABLE genre (
  id INTEGER PRIMARY KEY,
  name VARCHAR(50)
);

CREATE TABLE musicalbum (
  id INT PRIMARY KEY REFERENCES items(id),
  on_spotify BOOLEAN
);
