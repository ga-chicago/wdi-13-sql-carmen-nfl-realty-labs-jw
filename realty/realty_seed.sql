--enter your seed data below
INSERT INTO apartments (apartment_number, bedrooms, bathrooms, address, tenant, occupied, sq_footage, price)
	VALUES (304, 3, 2, '1162 W Hubbard St', 'Andy Prudhomme', true, 1850, 560000);

INSERT INTO apartments (apartment_number, bedrooms, bathrooms, address, tenant, occupied, sq_footage, price)
	VALUES (1, 4, 2, '3112 N Kenmore', 'Martin Scorsese', true, 2100, 500000);

INSERT INTO storefronts (address, occupied, price, kitchen, sq_footage, outdoor_seating, owner)
	VALUES ('100 West North St', false, 1000000, true, 2500, false, 'JJ Abrams');

INSERT INTO storefronts (address, occupied, price, kitchen, sq_footage, outdoor_seating, owner)
	VALUES ('22 South West St', true, 5000000, true, 9000, true, 'Donald Glover');
INSERT INTO offices (sq_footage, cubicles, bathrooms, company_name)
	VALUES (10000, 10, 2, 'General Assembly');

INSERT INTO offices (sq_footage, cubicles, bathrooms, company_name)
	VALUES (50000, 1000, 60, 'Google');

INSERT INTO offices (sq_footage, cubicles, bathrooms, company_name)
	VALUES (25000, 250, 20, 'Company, Inc.');