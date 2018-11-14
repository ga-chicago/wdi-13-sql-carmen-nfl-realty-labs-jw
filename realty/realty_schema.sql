DROP TABLE if exists apartments;
DROP TABLE if exists offices;
DROP TABLE if exists storefronts;

CREATE TABLE apartments(
	id SERIAL PRIMARY KEY,
	apt SMALLINT,
	bedrooms SMALLINT,
	bathrooms SMALLINT,
	address VARCHAR(255) NOT NULL
	tenant VARCHAR(64),
	occupied BOOLEAN,
	square_feet NUMERIC,
	price NUMERIC
);

CREATE TABLE offices(
	id SERIAL PRIMARY KEY,
	address VARCHAR(255) NOT NULL,
	bathrooms SMALLINT,
	kitchen BOOLEAN,
	occupied BOOLEAN,
	square_feet NUMERIC,
	price NUMERIC,
	company VARCHAR(128)
);

CREATE TABLE storefronts(
	id SERIAL PRIMARY KEY,
	address VARCHAR(255) NOT NULL,
	occupied BOOLEAN,
	price NUMERIC,
	kitchen BOOLEAN,
	square_feet NUMERIC,
	owner VARCHAR(64),
	outdoor_seating BOOLEAN DEFAULT FALSE
);