-- enter your schema for apartments, offices and storefronts below


CREATE TABLE apartments(
	id SERIAL PRIMARY KEY,
	apartment_number INTEGER,
	bedrooms INTEGER,
	bathrooms INTEGER,
	address VARCHAR(255) NOT NULL,
	tenant VARCHAR(255),
	occupied BOOLEAN,
	sq_footage INTEGER,
	price INTEGER
);

CREATE TABLE storefronts(
	id SERIAL PRIMARY KEY,
	address VARCHAR(255) NOT NULL,
	occupied BOOLEAN,
	price INTEGER,
	kitchen BOOLEAN,
	sq_footage INTEGER,
	owner VARCHAR(255),
	outdoor_seating BOOLEAN DEFAULT false
);