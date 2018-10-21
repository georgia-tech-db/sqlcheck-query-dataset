CREATE TABLE cities_of_ohio (	city VARCHAR(22) NOT NULL, 	population VARCHAR(7) NOT NULL, 	county VARCHAR(60) NOT NULL, 	UNIQUE (city))
SELECT last_value FROM ' || n.nspname || '.' || c.relname || ';
SELECT last_value FROM %s
CREATE TABLE menu (	name VARCHAR(14) NOT NULL, 	cost DECIMAL(3, 2) NOT NULL, 	warning VARCHAR(13), 	UNIQUE (name), 	UNIQUE (warning))
CREATE TABLE sql_keywords_appendix (	key_word VARCHAR(32) NOT NULL, 	postgresql VARCHAR(41), 	sql_2011 VARCHAR(12), 	sql_2008 VARCHAR(12), 	sql_92 VARCHAR(12))
CREATE TABLE movies (	name VARCHAR(23) NOT NULL, 	rating DECIMAL(2, 1) NOT NULL, 	UNIQUE (name), 	UNIQUE (rating))
CREATE TABLE generated_table (	 name VARCHAR(6) NOT NULL, 	 kg INTEGER NOT NULL, 	 species VARCHAR(8) NOT NULL )
CREATE TABLE knights ( 	name VARCHAR(8) NOT NULL, 	kg DECIMAL(3, 1) NOT NULL, 	dob TIMESTAMP WITHOUT TIME ZONE, 	UNIQUE (name), 	UNIQUE (dob) )
CREATE TABLE knights (	name VARCHAR(10) NOT NULL, 	dob TIMESTAMP WITHOUT TIME ZONE, 	kg DECIMAL(6, 4), 	brave BOOLEAN NOT NULL, 	UNIQUE (name), 	UNIQUE (kg))
CREATE TABLE birds (	common_name VARCHAR(19) NOT NULL, 	scientific_name VARCHAR(21) NOT NULL, 	length_in_cm INTEGER, 	birds_id SERIAL NOT NULL, 	PRIMARY KEY (birds_id), 	UNIQUE (common_name), 	UNIQUE (scientific_name), 	UNIQUE (length_in_cm), 	UNIQUE (birds_id))
CREATE TABLE merovingians (	name VARCHAR(12) NOT NULL, 	twitter TEXT, 	reign_from INTEGER NOT NULL, 	reign_to INTEGER NOT NULL, 	UNIQUE (name), 	UNIQUE (reign_from), 	UNIQUE (reign_to))
CREATE TABLE animals (	name VARCHAR(8) NOT NULL, 	species VARCHAR(10) NOT NULL, 	kg DECIMAL(4, 1) NOT NULL, 	notes VARCHAR(13), 	UNIQUE (name), 	UNIQUE (species), 	UNIQUE (kg), 	UNIQUE (notes))
CREATE TABLE pickled_knights (	name VARCHAR(10) NOT NULL, 	dob TIMESTAMP WITHOUT TIME ZONE, 	kg DECIMAL(6, 4), 	brave BOOLEAN NOT NULL, 	UNIQUE (name), 	UNIQUE (kg))
CREATE TABLE solarsystem (	kg DECIMAL(34, 0) NOT NULL, 	name VARCHAR(7) NOT NULL, 	orbits VARCHAR(7), 	UNIQUE (kg), 	UNIQUE (name))
CREATE TABLE state (	name VARCHAR(14) NOT NULL, 	abbrev VARCHAR(2) NOT NULL, 	birds_id INTEGER NOT NULL, 	UNIQUE (name), 	UNIQUE (abbrev), 	FOREIGN KEY(birds_id) REFERENCES birds (birds_id))
