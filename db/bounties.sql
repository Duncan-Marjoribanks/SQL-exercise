DROP TABLE IF EXISTS criminal;


CREATE TABLE criminal (
  id SERIAL4 PRIMARY KEY,
    name VARCHAR(255),
    species VARCHAR(255),
    bounty_value INT2,
    danger_level VARCHAR(255)
);
