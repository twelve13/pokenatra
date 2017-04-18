DROP TABLE IF EXISTS pokemons;
DROP TABLE IF EXISTS trainers;

CREATE TABLE trainers (
id SERIAL PRIMARY KEY,
name VARCHAR,
level INTEGER,
img_url VARCHAR
);

CREATE TABLE pokemons (
id SERIAL PRIMARY KEY,
name VARCHAR,
poke_type VARCHAR,
cp INTEGER,
trainer_id INTEGER,
img_url VARCHAR
);