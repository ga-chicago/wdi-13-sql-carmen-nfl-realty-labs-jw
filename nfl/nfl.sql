-- 1. List the names of all NFL teams'
SELECT teams.name FROM teams;

-- 2. List the stadium name and head coach of all NFC teams
SELECT stadium, head_coach FROM teams
	WHERE teams.conference = 'NFC';

-- 3. List the head coaches of the AFC South
SELECT head_coach FROM teams
	WHERE teams.conference = 'AFC' AND teams.division = 'South';

-- 4. The total number of players in the NFL
SELECT COUNT(*) FROM players;

--1532

-- 5. The team names and head coaches of the NFC North and AFC East
SELECT head_coach, teams.name FROM teams
	WHERE (teams.conference = 'NFC' AND teams.division = 'North') OR (teams.conference = 'AFC' AND teams.division = 'East');

-- 6. The 50 players with the highest salaries
SELECT players.name FROM players
	ORDER BY players.salary DESC
	LIMIT 50;

-- 7. The average salary of all NFL players
SELECT AVG(players.salary) FROM players;

-- 8. The names and positions of players with a salary above 10_000_000
SELECT players.name, position FROM players
	WHERE players.salary > 10000000;

-- 9. The player with the highest salary in the NFL
SELECT players.name, players.salary FROM players
	ORDER BY players.salary DESC
	LIMIT 1;

-- 10. The name and position of the first 100 players with the lowest salaries


-- 11. The average salary for a DE in the nfl


-- 12. The names of all the players on the Buffalo Bills


-- 13. The total salary of all players on the New York Giants


-- 14. The player with the lowest salary on the Green Bay Packers
