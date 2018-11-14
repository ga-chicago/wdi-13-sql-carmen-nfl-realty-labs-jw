----------------------------------------------------------------------
------------------------------ COMMIT 1 ------------------------------
--"Commit: NFL - I seeded the database with the players and teams info"
----------------------------------------------------------------------
----------------------------------------------------------------------

-- 1. List the names of all NFL teams'

-- SELECT DISTINCT name
-- 	FROM teams;

-- >>> 		  name         
-- >>> --------------------
-- >>> New England Patriots
-- >>> New Orleans Saints
-- >>> ...
-- >>> Philadelphia Eagles
-- >>> San Diego Chargers
-- >>> (32 rows)


-- 2. List the stadium name and head coach of all NFC teams

-- SELECT name, head_coach, stadium, conference
-- 	FROM teams
-- 	WHERE conference = 'NFC';

-- >>>          name         |  head_coach   |            stadium            | conference 
-- >>> ----------------------+---------------+-------------------------------+------------
-- >>>  Dallas Cowboys       | Jason Garrett | AT&T Stadium                  | NFC
-- >>>  New York Giants      | Tom Coughlin  | MetLife Stadium               | NFC
-- >>>  Philadelphia Eagles  | Chip Kelly    | Lincoln Financial Field       | NFC
-- >>> ...
-- >>>  San Francisco 49ers  | Jim Harbaugh  | Levis Stadium                 | NFC
-- >>>  Seattle Seahawks     | Pete Carroll  | CenturyLink Field             | NFC
-- >>> (16 rows)


-- 3. List the head coaches of the AFC South

-- SELECT name, head_coach, conference, division
-- 	FROM teams
-- 	WHERE conference = 'AFC' AND division = 'South';

-- >>>          name         |   head_coach   | conference | division 
-- >>> ----------------------+----------------+------------+----------
-- >>>  Houston Texans       | Bill OBrien    | AFC        | South
-- >>>  Indianapolis Colts   | Chuck Pagano   | AFC        | South
-- >>>  Jacksonville Jaguars | Gus Bradley    | AFC        | South
-- >>>  Tennessee Titans     | Ken Whisenhunt | AFC        | South


-- 4. The total number of players in the NFL

-- SELECT COUNT(*)
-- 	FROM players;
	
-- >>>  count 
-- >>> -------
-- >>>   1532

----------------------------------------------------------------------
------------------------------ COMMIT 2 ------------------------------
--------------- "Commit: NFL - queried some NFL stuff" ---------------
----------------------------------------------------------------------
----------------------------------------------------------------------

-- 5. The team names and head coaches of the NFC North and AFC East


-- 6. The 50 players with the highest salaries


-- 7. The average salary of all NFL players


-- 8. The names and positions of players with a salary above 10_000_000


-- 9. The player with the highest salary in the NFL


-- 10. The name and position of the first 100 players with the lowest salaries


-- 11. The average salary for a DE in the nfl


-- 12. The names of all the players on the Buffalo Bills


-- 13. The total salary of all players on the New York Giants


-- 14. The player with the lowest salary on the Green Bay Packers
