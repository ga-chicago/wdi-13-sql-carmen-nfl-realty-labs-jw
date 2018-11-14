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
	address VARCHAR(255) NOT NULL,
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
	cubicles SMALLINT,
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

INSERT INTO apartments (apt, bedrooms , bathrooms, address, tenant, occupied, square_feet, price)
VALUES(2, 4, 5, '900 Biscayne Blvd UNIT 5506 Miami, FL', 'Lance Custen', true, 3654, 2900000);
INSERT INTO apartments (bedrooms , bathrooms, address, occupied, square_feet, price)
VALUES( 1, 1, '2273 NW 65th Street UNIT Reer Miami, FL', false, 600, 1150);
INSERT INTO apartments (bedrooms , bathrooms, address, tenant, occupied, square_feet, price)
VALUES(4, 2, '18912 E 44th Place Denver, CO 80249', 'Denise Ingram', true, 2008, 319000);

INSERT INTO offices (address, bathrooms, kitchen, cubicles, occupied, square_feet, price)
VALUES('220 Davidson Ave, Somerset, NJ, 89360', 4, true, 28, false, 5000, 10000);
INSERT INTO offices (address, bathrooms, kitchen, cubicles, occupied, square_feet, price, company)
VALUES('1825 Fort View Rd, Austin, TX 78704', 6, true, 375, true, 141000, 6000, 'Dragoncorp');
INSERT INTO offices (address, bathrooms, kitchen, cubicles, occupied, square_feet, price, company)
VALUES('264 Leopoldo Walk, Lansing , MI, 76399', 2, false, 124, true, 2500, 5000, 'MinSup');
 
INSERT INTO storefronts (address, occupied, price, kitchen, square_feet, owner, outdoor_seating)
VALUES('55946 Bartoletti Falls, Gravity Falls, UT, 10374', true, 10374, true, 2508, 'Mr. Tenenbaum', true);
INSERT INTO storefronts (address, occupied, price, kitchen, square_feet, owner, outdoor_seating)
VALUES('380 Lavonne Loaf, Lulufurt, NY 61381', false, 14305, true, 5708, null, true);
INSERT INTO storefronts (address, occupied, price, kitchen, square_feet, owner, outdoor_seating)
VALUES('00840 MacGyver Park, North Jeramy, AL 23331', true, 26064, false, 3471, 'Zeno Zoldyck', false);

----------------------------------------------------------------------
------------------------------ COMMIT 3 ------------------------------
---- "Commit: REALTY - Realty seed file created and db seeded" -------
----------------------------------------------------------------------
----------------------------------------------------------------------


-- 1. The average square footage of all offices.

-- SELECT AVG(square_feet) FROM offices;

-- >>>         avg         
-- >>> --------------------
-- >>>  49500.000000000000


-- 2. The total number of apartments.

-- SELECT COUNT(*) AS total_number_of_apartments FROM apartments;

-- >>>  total_number_of_apartments 
-- >>> ----------------------------
-- >>>                           3


-- 3. The apartments where there is no tenant

-- SELECT address, tenant FROM apartments WHERE tenant IS NULL;

-- >>>                  address                 | tenant 
-- >>> -----------------------------------------+--------
-- >>>  2273 NW 65th Street UNIT Reer Miami, FL | 


-- 4. The names of all of the companies

-- SELECT company FROM offices WHERE company IS NOT NULL;

-- >>>   company   
-- >>> ------------
-- >>>  Dragoncorp
-- >>>  MinSup


-- 5. The number of cubicles and bathrooms in the 3rd office

-- SELECT cubicles, bathrooms FROM offices WHERE id = 3;

-- >>>  cubicles | bathrooms 
-- >>> ----------+-----------
-- >>>       124 |         2


-- 6. The storefronts that have kitchens

-- SELECT address, kitchen FROM storefronts WHERE kitchen = TRUE;

-- >>>                      address                      | kitchen 
-- >>> --------------------------------------------------+---------
-- >>>  55946 Bartoletti Falls, Gravity Falls, UT, 10374 | t
-- >>>  380 Lavonne Loaf, Lulufurt, NY 61381             | t


-- 7. The storefront with the highest square footage and outdoor seating

-- SELECT address, square_feet, outdoor_seating
-- 	FROM storefronts
-- 	WHERE outdoor_seating = TRUE
-- 	ORDER BY square_feet DESC
-- 	LIMIT 1;

-- >>>                address                | square_feet | outdoor_seating 
-- >>> --------------------------------------+-------------+-----------------
-- >>>  380 Lavonne Loaf, Lulufurt, NY 61381 |        5708 | t


-- 8. The office with the lowest number of cubicles

-- SELECT address, cubicles 
-- 	FROM offices
-- 	ORDER BY cubicles ASC
-- 	LIMIT 1;

-- >>>                 address                | cubicles 
-- >>> ---------------------------------------+----------
-- >>>  220 Davidson Ave, Somerset, NJ, 89360 |       28


-- 9. The office with the most cubicles and bathrooms

-- SELECT address, cubicles, bathrooms
-- 	FROM offices
-- 	ORDER BY (cubicles + bathrooms) DESC
-- 	LIMIT 1;

-- >>>                address               | cubicles | bathrooms 
-- >>> -------------------------------------+----------+-----------
-- >>>  1825 Fort View Rd, Austin, TX 78704 |      375 |         6


----------------------------------------------------------------------
------------------------------ COMMIT 4 ------------------------------
---------------- "Commit: Realty queries completed" ------------------
----------------------------------------------------------------------
----------------------------------------------------------------------









