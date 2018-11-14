-- 1. The average square footage of all offices.
--awaiting offices

-- 2. The total number of apartments.
SELECT
	COUNT(*) as apt_count
FROM apartments;

-- 3. The apartments where there is no tenant
SELECT
	*
FROM apartments
WHERE tenant = 'false';

-- 4. The names of all of the companies
--awaiting offices

-- 5. The number of cubicles and bathrooms in the 3rd office
--awaiting offices

-- 6. The storefronts that have kitchens
SELECT
	*
FROM storefronts
WHERE kitchen = 'true';

-- 7. The storefront with the highest square footage and outdoor seating
SELECT
	*
FROM storefronts
WHERE outdoor_seating = 'true'
ORDER BY sq_ft DESC
LIMIT 1;

-- 8. The office with the lowest number of cubicles
--awaiting offices

-- 9. The office with the most cubicles and bathrooms
--awaiting offices