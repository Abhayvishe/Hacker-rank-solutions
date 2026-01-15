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



-- Problem: Query a list of CITY names from STATION for cities that have an even ID number.
-- Platform: HackerRank
-- Difficulty: Easy
-- Topic: SQL Basics
SELECT DISTINCT city FROM station WHERE MOD(id, 2) = 0;




-- Problem: Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table
-- Platform: HackerRank
-- Difficulty: Easy
-- Topic: SQL Basics
SELECT
  COUNT(CITY) - COUNT(DISTINCT CITY) AS city_duplicate_diff
FROM STATION;




-- Problem: Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION.
-- Platform: HackerRank
-- Difficulty: Easy
-- Topic: SQL Basics
SELECT DISTINCT CITY FROM STATION WHERE SUBSTR(CITY, 1, 1) IN ('A', 'E', 'I', 'O', 'U');



-- Problem: Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters.
-- Platform: HackerRank
-- Difficulty: Easy
-- Topic: SQL Basics
SELECT DISTINCT city FROM station WHERE UPPER(LEFT(city, 1)) IN ('A', 'E', 'I', 'O', 'U') AND LOWER(RIGHT(city, 1)) IN ('a', 'e', 'i', 'o', 'u');




-- Problem: Query the list of CITY names from STATION that do not start with vowels. 
-- Platform: HackerRank
-- Difficulty: Easy
-- Topic: SQL Basics
select distinct city from station where upper(left(city,1)) not in ('A','E','I','O','U');





-- Problem: Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels.
-- Platform: HackerRank
-- Difficulty: Easy
-- Topic: SQL Basics
select distinct city from station where not upper(left(city,1)) in ('A','I','E','O','U') OR not upper(right(city,1)) in ('A','I','E','O','U');






-- Problem: Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
-- Platform: HackerRank
-- Difficulty: Easy
-- Topic: SQL Basics
SELECT Name FROM STUDENTS WHERE Marks > 75 ORDER BY RIGHT(Name, 3), ID ASC;




-- Problem: Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
-- Platform: HackerRank
-- Difficulty: Easy
-- Topic: SQL Basics
SELECT NAME FROM EMPLOYEE ORDER BY NAME ASC;




-- Problem: Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than  per month who have been employees for less than  months. Sort your result by ascending employee_id.
-- Platform: HackerRank
-- Difficulty: Easy
-- Topic: SQL Basics
SELECT NAME FROM EMPLOYEE WHERE SALARY > 2000 AND MONTHS < 10 ORDER BY EMPLOYEE_ID ASC;




-- Problem:Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:
-- Platform: HackerRank
-- Difficulty: Easy
-- Topic: SQL Basics
SELECT

CASE WHEN (A+B<=C) OR (B+C<=A) OR (A+C<=B) THEN 'Not A Triangle'

WHEN (A=B) AND (B=C) THEN 'Equilateral' WHEN (A=B) OR (A=C) OR (B=C) THEN 'Isosceles'

ELSE 'Scalene' END AS TYPE FROM TRIANGLES;






-- Problem: Query a count of the number of cities in CITY having a Population larger than 100000.
-- Platform: HackerRank
-- Difficulty: Easy
-- Topic: SQL Basics

SELECT COUNT(*) from CITY where POPULATION>100000;





-- Problem:Query the total population of all cities in CITY where District is California.
-- Platform: HackerRank
-- Difficulty: Easy
-- Topic: SQL Basics

Select SUM(Population)
from city
where District ='California';





-- Problem:Query the average population of all cities in CITY where District is California.
-- Platform: HackerRank
-- Difficulty: Easy
-- Topic: SQL Basics
Select Avg(Population) from city
where District ='California';




-- Problem:Query the difference between the maximum and minimum populations in CITY.
-- Platform: HackerRank
-- Difficulty: Easy
-- Topic: SQL Basics
SELECT MAX(POPULATION) - MIN(POPULATION)
FROM CITY;







-- Problem:Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.
-- Platform: HackerRank
-- Difficulty: Easy
-- Topic: SQL Basics
SELECT CAST( CEILING( AVG(CAST(salary AS FLOAT)) - AVG(CAST(REPLACE(CAST(salary AS VARCHAR(20)), '0', '') AS FLOAT)) ) AS INT ) FROM employees;




-- Problem: We define an employee's total earnings to be their monthly  worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as  space-separated integers.
-- Platform: HackerRank
-- Difficulty: Easy
-- Topic: SQL Basics
select  MAX(salary * months) as earning, count(*) from employee where (salary * months) = (select MAX(salary*months)from employee);
