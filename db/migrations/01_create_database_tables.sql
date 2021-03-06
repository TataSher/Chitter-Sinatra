
CREATE DATABASE chitter_db_development

CREATE TABLE users(id SERIAL PRIMARY KEY, email VARCHAR (200) UNIQUE, username VARCHAR (200) UNIQUE, password VARCHAR(140));

CREATE TABLE peeps(id SERIAL PRIMARY KEY, peep VARCHAR (300), written_by INTEGER REFERENCES users(user_id), written_at TIMESTAMP);