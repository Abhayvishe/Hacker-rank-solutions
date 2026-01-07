-- Problem: Select City Names in the USA with Population Greater than 120,000
-- Platform: HackerRank
-- Difficulty: Easy
-- Topic: SQL Basics

SELECT NAME
FROM CITY
WHERE CountryCode = 'USA'
  AND Population > 120000
ORDER BY NAME DESC;



