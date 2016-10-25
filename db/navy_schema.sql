-- NOTE - DROP TABLE commands must be in REVERSE ORDER (since we have ON DELETE CASCADE in our table creates?)

DROP TABLE IF EXISTS link_table;
DROP TABLE IF EXISTS ranks;
DROP TABLE IF EXISTS duties;
DROP TABLE IF EXISTS sailors;
DROP TABLE IF EXISTS ships;
DROP TABLE IF EXISTS fleet;

CREATE TABLE fleet (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE ships (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  build_date DATE NOT NULL,
  fleet_id INTEGER NOT NULL REFERENCES fleet(id) ON DELETE CASCADE
);

CREATE TABLE sailors (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  birthdate DATE NOT NULL
);

CREATE TABLE duties (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  duration INTEGER NOT NULL
);

CREATE TABLE ranks (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE link_table (
  id SERIAL PRIMARY KEY,
  ship_id INTEGER NOT NULL REFERENCES ships(id) ON DELETE CASCADE,
  sailor_id INTEGER NOT NULL REFERENCES sailors(id) ON DELETE CASCADE,
  duty_id INTEGER NOT NULL REFERENCES duties(id) ON DELETE CASCADE,
  rank_id INTEGER NOT NULL REFERENCES ranks(id) ON DELETE CASCADE,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL
);
