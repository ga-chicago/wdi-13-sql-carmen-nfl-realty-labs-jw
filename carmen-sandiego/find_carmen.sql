-- TEST COMMAND AND SAMPLE OUTPUT
-- Record your query (or queries, some clues require more than one) below the clue, then comment out the output below it
-- use two `-` to comment at the start of a line, or highlight the text and press `⌘/` to toggle comments
-- EXAMPLE: SELECT ALL FROM THE TABLE COUNTRY AND LIMIT IT TO ONE ENTRY

SELECT * FROM COUNTRY LIMIT 1;

--  -[ RECORD 1 ]--+--------------------------
-- code           | AFG
-- name           | Afghanistan
-- continent      | Asia
-- region         | Southern and Central Asia
-- surfacearea    | 652090
-- indepyear      | 1919
-- population     | 22720000
-- lifeexpectancy | 45.9
-- gnp            | 5976.00
-- gnpold         |
-- localname      | Afganistan/Afqanestan
-- governmentform | Islamic Emirate
-- headofstate    | Mohammad Omar
-- capital        | 1
-- code2          | AF



-- Clue #1: We recently got word that someone fitting Carmen Sandiego's description has been traveling through Southern Europe. She's most likely traveling someplace where she won't be noticed, so find the least populated country in Southern Europe, and we'll start looking for her there.

-- SELECT MIN(population), name
-- 	FROM COUNTRY
-- 	WHERE COUNTRY.region = 'Southern Europe'
-- 	GROUP BY COUNTRY.name
-- 	ORDER BY MIN(population)
-- 	LIMIT 1;

-- >>> 1000 | Holy See (Vatican City State)


-- Clue #2: Now that we're here, we have insight that Carmen was seen attending language classes in this country's officially recognized language. Check our databases and find out what language is spoken in this country, so we can call in a translator to work with you.

-- SELECT name, region, population, language 
-- 	FROM COUNTRY
-- 	INNER JOIN COUNTRYLANGUAGE AS c_lang ON c_lang.countrycode = COUNTRY.code
-- 	WHERE COUNTRY.name = 'Holy See (Vatican City State)';

-- >>> Italian


-- Clue #3: We have new news on the classes Carmen attended – our gumshoes tell us she's moved on to a different country, a country where people speak only the language she was learning. Find out which nearby country speaks nothing but that language.

-- SELECT name, region, language 
-- 	FROM COUNTRY
-- 	INNER JOIN COUNTRYLANGUAGE AS c_lang ON c_lang.countrycode = COUNTRY.code
-- 	WHERE c_lang.language = 'Italian' AND c_lang.isofficial = 't' AND name <> 'Holy See (Vatican City State)' AND (region = 'Southern Europe' OR region = 'Western Europe');

-- >>>     name     |     region      | language 
-- >>> -------------+-----------------+----------
-- >>>  Italy       | Southern Europe | Italian
-- >>>  San Marino  | Southern Europe | Italian
-- >>>  Switzerland | Western Europe  | Italian


-- Clue #4: We're booking the first flight out – maybe we've actually got a chance to catch her this time. There are only two cities she could be flying to in the country. One is named the same as the country – that would be too obvious. We're following our gut on this one; find out what other city in that country she might be flying to.

-- SELECT COUNTRY.name AS country, CITY.name AS city
-- 	FROM COUNTRY
-- 	INNER JOIN CITY ON CITY.countrycode = COUNTRY.code
-- 	WHERE COUNTRY.name = 'San Marino' AND CITY.name <> 'San Marino'
-- 	GROUP BY COUNTRY.name, CITY.name;

-- >>>   country   |    city    
-- >>> ------------+------------
-- >>>  San Marino | Serravalle

----------------------------------------------------------------------
------------------------------ COMMIT 1 ------------------------------
-- "Commit: CARMEN SANDIEGO - Halfway there! Hot on her trail."
----------------------------------------------------------------------


-- Clue #5: Oh no, she pulled a switch – there are two cities with very similar names, but in totally different parts of the globe! She's headed to South America as we speak; go find a city whose name is like the one we were headed to, but doesn't end the same. Find out the city, and do another search for what country it's in. Hurry!

-- SELECT CITY.name AS city, COUNTRY.name as country 
-- 	FROM CITY
-- 	INNER JOIN COUNTRY ON COUNTRY.code = CITY.countrycode 
-- 	WHERE COUNTRY.region = 'South America' AND CITY.name LIKE 'San M%'
-- 	ORDER BY CITY.name;

-- >>>           city           |  country  
-- >>> -------------------------+-----------
-- >>>  San Miguel              | Argentina  <<<<<< I'm assuming this is the one we want
-- >>>  San Miguel de Tucum�n   | Argentina


-- Clue #6: We're close! Our South American agent says she just got a taxi at the airport, and is headed towards the capital! Look up the country's capital, and get there pronto! Send us the name of where you're headed and we'll follow right behind you!

-- SELECT COUNTRY.name AS country, CITY.name AS capital
-- 	FROM CITY
-- 	INNER JOIN COUNTRY ON COUNTRY.code = CITY.countrycode 
-- 	WHERE COUNTRY.name = 'Argentina' AND COUNTRY.capital = CITY.id;

-- >>>   country  |   capital    
-- >>> -----------+--------------
-- >>>  Argentina | Buenos Aires


-- Clue #7: She knows we're on to her – her taxi dropped her off at the international airport, and she beat us to the boarding gates. We have one chance to catch her, we just have to know where she's heading and beat her to the landing dock.

-- Lucky for us, she's getting cocky. She left us a note, and I'm sure she thinks she's very clever, but if we can crack it, we can finally put her where she belongs – behind bars.

-- Our playdate of late has been unusually fun –
-- As an agent, I'll say, you've been a joy to outrun.
-- And while the food here is great, and the people – so nice!
-- I need a little more sunshine with my slice of life.
-- So I'm off to add one to the population I find
-- In a city of ninety-one thousand and now, eighty five.

-- We're counting on you, gumshoe. Find out where she's headed, send us the info, and we'll be sure to meet her at the gates with bells on.

-- Look for a city with 91084 (no way they'll have done a census by the time she's settled)
SELECT name AS city_name, countrycode, population
	FROM CITY
	WHERE population = 91084;

-- >>>   city_name   | countrycode | population 
-- >>> --------------+-------------+------------
-- >>>  Santa Monica | USA         |      91084

-- She's in _____ Santa Monica _____!


----------------------------------------------------------------------
------------------------------ COMMIT 2 ------------------------------
-- "Commit: CARMEN SANDIEGO - I found Carmen Sandiego"
----------------------------------------------------------------------


-- Hungry for more?
-- Some of the entries have gotten a bit messed up. For example, the capital of Brazil is not `Brasï¿½lia`, rather, it is Brasília. Update this entry to the correct spelling. Record your update, in the find_carmen.sql file (below `I found Carmen`), and do a query for one row and copy paste it to show the update.

-- UPDATE CITY
-- SET name = 'Brasília'
-- WHERE name = 'Bras�lia' -- (WHERE name = 'Brasï¿½lia' DOES NOT WORK)
-- RETURNING name;
-- >>>    name    
-- >>> -----------
-- >>>  Brasília

------------ To be sure ------------ v
-- SELECT COUNTRY.name AS country, CITY.name AS capital
-- 	FROM CITY
-- 	INNER JOIN COUNTRY ON COUNTRY.code = CITY.countrycode 
-- 	WHERE COUNTRY.name = 'Brazil' AND COUNTRY.capital = CITY.id;

-- >>>  country |  capital  
-- >>> ---------+-----------
-- >>>  Brazil  | Brasília
------------ To be sure ------------ 


-- Update any other two entries that have gotten messed up.

-- SELECT COUNTRY.name AS country, CITY.name AS capital
-- 	FROM CITY
-- 	INNER JOIN COUNTRY ON COUNTRY.code = CITY.countrycode 
-- 	WHERE COUNTRY.name = 'France';

-- UPDATE CITY
-- SET name = 'Nîmes'
-- WHERE name = 'N�mes'
-- RETURNING name;
-- >>>   name  
-- >>> --------
-- >>>  Nîmes

-- UPDATE CITY
-- SET name = 'Besançon'
-- WHERE name = 'Besan�on'
-- RETURNING name;
-- >>>    name    
-- >>> -----------
-- >>>  Besançon







