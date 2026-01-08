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

-- Problem: Query all columns (attributes) for every row in the CITY table.
-- Platform: HackerRank
-- Difficulty: Easy
-- Topic: SQL Basics
