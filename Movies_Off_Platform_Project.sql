--Create a Database
CREATE DATABASE movies;

--Create table films
CREATE TABLE films (
  name TEXT,
  release_year INTEGER
);

--Insert into table
INSERT INTO films (name, age)
VALUES
	('The Matrix',1999),
	('Monsterʼs Inc.',2001),
	('Call Me By Your
Name',2017),
	('Home Alone 2: Lost In New York',1992),
	('Sister Act',1992),
	('The Shining',1980),
	('Cheaper by the Dozen',2003);

--select all the movies release the year you were born
SELECT * FROM films WHERE release_year = 1992;

--add additional columns to the table
ALTER TABLE films
ADD COLUMN runtime INTEGER,
ADD COLUMN category TEXT,
ADD COLUMN rating TEXT,
ADD COLUMN box_office_earnings BIGINT;

UPDATE films SET runtime=92, category='Animation, Adventure, Comedy, Family', rating='G', box_office_earnings=579700000 WHERE name='Monsters, Inc.';
UPDATE films SET runtime=132, category='Drama, Romance', rating='R', box_office_earnings=41900000 WHERE name='Call Me By Your Name';
UPDATE films SET runtime=120, category='Comedy, Family', rating='PG', box_office_earnings=359000000 WHERE name='Home Alone 2: Lost In New York';
UPDATE films SET runtime=100, category='Comedy, Music', rating='PG', box_office_earnings=231600000 WHERE name='Sister Act';
UPDATE films SET runtime=144, category='Drama, Horror, Mystery', rating='R', box_office_earnings=47000000 WHERE name='The Shining';
UPDATE films SET runtime=98, category='Comedy, Family', rating='PG', box_office_earnings=190200000 WHERE name='Cheaper by the Dozen';

ALTER TABLE films
ADD CONSTRAINT unique_name UNIQUE (name);
