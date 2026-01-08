-- Problem: Select City Names in the USA with Population Greater than 120,000
-- Platform: HackerRank
-- Difficulty: Easy
-- Topic: SQL Basics
SELECT NAME
FROM CITY
WHERE CountryCode = 'USA'
  AND Population > 120000
ORDER BY NAME DESC;



-- Problem: Query all columns (attributes) for every row in the CITY table.
-- Platform: HackerRank
-- Difficulty: Easy
-- Topic: SQL Basics

SELECT *
FROM CITY;




-- Problem: Query all columns for a city in CITY with the ID 1661
-- Platform: HackerRank
-- Difficulty: Easy
-- Topic: SQL Basics
SELECT *
FROM CITY
WHERE ID = 1661;



-- Problem: Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
-- Platform: HackerRank
-- Difficulty: Easy
-- Topic: SQL Basics
SELECT *
FROM CITY
WHERE CountryCode = 'JPN';



-- Problem: Query a list of CITY and STATE from the STATION table
-- Platform: HackerRank
-- Difficulty: Easy
-- Topic: SQL Basics
SELECT CITY, STATE
FROM STATION;
