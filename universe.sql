CREATE DATABASE universe;

\c universe

CREATE TABLE galaxy (
    galaxy_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE star (
    star_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    galaxy_id INT REFERENCES galaxy(galaxy_id)
);
