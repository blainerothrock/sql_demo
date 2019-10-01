CREATE DATABASE testing;
DROP DATABASE testing;

CREATE SCHEMA testing;

CREATE TABLE testing._sample (
    id int PRIMARY KEY,
    last_name varchar(255),
    first_name varchar(255),
    age int
);

ALTER TABLE testing._sample
ADD CONSTRAINT UC_sample UNIQUE (id,last_name);

INSERT INTO testing._sample
(id, last_name, first_name, age)
VALUES
       (1, 'Smith', 'John', '29'),
       (2, 'Snow', 'John', '35');

UPDATE testing._sample
    SET first_name = 'Jane'
    WHERE id = 1;

DELETE FROM testing._sample
    WHERE id = 2;

DROP TABLE testing._sample;

DROP SCHEMA testing;