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
