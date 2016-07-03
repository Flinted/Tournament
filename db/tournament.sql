DROP TABLE results;
DROP TABLE events;
DROP TABLE lists;
DROP TABLE knights;
DROP TABLE horses;
DROP TABLE kingdoms;


CREATE TABLE kingdoms(
  id SERIAL8 primary key,
  name VARCHAR(255),
  flag VARCHAR(510),
  arms VARCHAR(510)
);

CREATE TABLE horses(
  id SERIAL8 primary key,
  name VARCHAR(255),
  img VARCHAR(510),
  knight_id INT8
);

CREATE TABLE knights(
  id SERIAL8 primary key,
  name VARCHAR(255),
  img VARCHAR(510),
  wealth INT4,
 nation_id INT8 references kingdoms(id) on delete cascade
);

CREATE TABLE lists(
  id SERIAL8 primary key,
  knight_id INT8 references knights(id) on delete cascade
);

CREATE TABLE events(
  id SERIAL8 primary key,
  name VARCHAR(255),
  type VARCHAR(255),
  family VARCHAR(255),
  max INT2,
  prize INT2,
  img VARCHAR(255),
  event_date DATE
);

CREATE TABLE results(
  id SERIAL8 primary key,
  event_id INT8 references events(id)on delete cascade,
  knight_id INT8 references knights(id)on delete cascade, 
  position INT2
);
