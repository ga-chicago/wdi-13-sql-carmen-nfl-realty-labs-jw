CREATE DATABASE realty_db;

----------------------------------------------------------------------
------------------------------ COMMIT 1 ------------------------------
------------ "Commit: REALTY - Realty database created" --------------
----------------------------------------------------------------------
----------------------------------------------------------------------

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


----------------------------------------------------------------------
------------------------------ COMMIT 2 ------------------------------
------------- "Commit: REALTY - Realty schema created" ---------------
----------------------------------------------------------------------
----------------------------------------------------------------------


----------------------------------------------------------------------
------------------------------ COMMIT 3 ------------------------------
---- "Commit: REALTY - Realty seed file created and db seeded" -------
----------------------------------------------------------------------
----------------------------------------------------------------------



-- 1. The average square footage of all offices.


-- 2. The total number of apartments.


-- 3. The apartments where there is no tenant


-- 4. The names of all of the companies


-- 5. The number of cubicles and bathrooms in the 3rd office


-- 6. The storefronts that have kitchens


-- 7. The storefront with the highest square footage and outdoor seating


-- 8. The office with the lowest number of cubicles


-- 9. The office with the most cubicles and bathrooms


----------------------------------------------------------------------
------------------------------ COMMIT 4 ------------------------------
---------------- "Commit: Realty queries completed" ------------------
----------------------------------------------------------------------
----------------------------------------------------------------------









