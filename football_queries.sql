-- 1) Find all the matches from 2017.
-- SELECT * FROM matches WHERE season = 2017;

-- 2) Find all the matches featuring Barcelona.
-- SELECT * FROM matches WHERE hometeam = 'Barcelona' OR awayteam = 'Barcelona';

-- 3) What are the names of the Scottish divisions included?
-- SELECT name FROM divisions WHERE country = 'Scotland';
-- Scottish Premiership
--  Scottish Championship
--  Scottish League One

-- 4) Find the value of the `code` for the `Bundesliga` division. 
-- Use that code to find out how many matches Freiburg have played in that division. 
-- HINT: You will need to query both tables
-- SELECT code FROM divisions WHERE name = 'Bundesliga';
-- SELECT COUNT(*) FROM matches WHERE division_code = 'D1' AND hometeam = 'Freiburg' OR awayteam = 'Freiburg';
-- 459

-- 5) Find the teams which include the word "City" in their name. 
-- SELECT DISTINCT hometeam FROM matches WHERE hometeam LIKE '%City%';
-- 4 teams

-- 6) How many different teams have played in matches recorded in a French division?
-- SELECT code FROM divisions WHERE country = 'France';    
-- SELECT COUNT(DISTINCT hometeam) FROM matches WHERE division_code IN ('F1', 'F2');
-- 61

-- 7) Have Huddersfield played Swansea in any of the recorded matches?
-- SELECT * FROM matches WHERE hometeam='Huddersfield' AND awayteam='Swansea' OR hometeam='Swansea' AND awayteam='Huddersfield';
-- 12 times

-- 8) How many draws were there in the `Eredivisie` between 2010 and 2015?
-- SELECT code FROM divisions WHERE name = 'Eredivisie';
-- SELECT COUNT(*) FROM matches WHERE division_code = 'N1' AND ftr = 'D' AND season BETWEEN 2010 AND 2015;

-- 9) Select the matches played in the Premier League in order of total goals scored from highest to lowest. 
-- When two matches have the same total the match with more home goals should come first.
-- SELECT code FROM divisions WHERE name= 'Premier League';
-- SELECT * FROM matches WHERE division_code = 'E0' ORDER BY (ftag + fthg, fthg)DESC;

-- 10) In which division and which season were the most goals scored?
-- SELECT division_code, season, SUM(fthg + ftag) FROM matches GROUP BY division_code, season ORDER BY sum DESC LIMIT 1;
-- SELECT * FROM divisions WHERE code = 'EC';




