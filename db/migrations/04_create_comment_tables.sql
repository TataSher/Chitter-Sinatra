CREATE TABLE comments(id SERIAL PRIMARY KEY, text VARCHAR(300), peep_id INTEGER REFERENCES peeps (id));