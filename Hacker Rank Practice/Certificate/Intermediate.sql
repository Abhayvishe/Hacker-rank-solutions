-- Problem: Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
-- Platform: HackerRank
-- Difficulty: Intermediate
-- Topic: SQL Intermediate
SELECT CITY, LENGTH(CITY) as l FROM STATION ORDER BY l ASC, CITY LIMIT 1;

SELECT CITY, LENGTH(CITY) as l FROM STATION ORDER BY  l DESC, CITY LIMIT 1;



-- Problem: You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.
-- Platform: HackerRank
-- Difficulty: Intermediate
-- Topic: SQL Intermediate
