--  TODO: Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT CITY FROM STATION 
WHERE CITY NOT REGEXP '^[aeiou].*[aeiou]$'; 

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------

-- TODO: Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT CITY FROM STATION WHERE
CITY NOT REGEXP '[aeiou]$';

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------


-- TODO: Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '^[^aeiou]';

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------


-- TODO: Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

SELECT CITY FROM STATION WHERE CITY REGEXP '^[aeiou].*[aeiou]$';

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------


-- TODO: Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '[aeiou]$';

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------


-- TODO: Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '^[aeiou]';

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------

-- TODO: Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

SELECT CITY , CHAR_LENGTH(CITY) FROM STATION ORDER BY CHAR_LENGTH(CITY),CITY LIMIT 1;

SELECT CITY , CHAR_LENGTH(CITY) FROM STATION ORDER BY CHAR_LENGTH(CITY) DESC,CITY  LIMIT 1;

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------


-- TODO: Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.

SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION;

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------


-- TODO: Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '^[^aeiou].*[^aeiou]$'; 


-- TODO: Query the Name of any student in STUDENTS who scored higher than 75 Marks. 
-- Order your output by the last three characters of each name. 
-- If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

SELECT NAME 
FROM STUDENTS 
WHERE MARKS>75
ORDER BY SUBSTR(NAME , -3, CHAR_LENGTH(NAME)),ID ;

SELECT NAME FROM STUDENTS 
WHERE MARKS>75
ORDER BY SUBSTR(NAME , -3) ,ID ;

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------
    
-- TODO: Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than 2000 per month 
-- who have been employees for less than 10 months. Sort your result by ascending employee_id.

SELECT NAME FROM EMPLOYEE WHERE SALARY > 2000 AND MONTHS < 10 ORDER BY EMPLOYEE_ID;

----------------------------------------------------------------------------------------------------------------------------------------------------------------

-- TODO: THE PADS
-- Generate the following two result sets:

-- Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical 
-- (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
-- Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:


SELECT CONCAT(NAME ,"(" ,  SUBSTR(OCCUPATION, 1 , 1) ,")")
FROM OCCUPATIONS 
ORDER BY NAME; 

SELECT CONCAT("There are a total of ", COUNT(OCCUPATION)," ", LOWER(OCCUPATION),"s.")
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(OCCUPATION);


----------------------------------------------------------------------------------------------------------------------------------------------------------------

-- TODO: TRIANGLE


SELECT
  CASE 
    WHEN A + B <= C or A + C <= B or B + C <= A THEN 'Not A Triangle'
    WHEN A = B and B = C THEN 'Equilateral'
    WHEN A = B or A = C or B = C THEN 'Isosceles'
    WHEN A <> B and B <> C THEN 'Scalene'
  END tuple
FROM TRIANGLES;

----------------------------------------------------------------------------------------------------------------------------------------------------------------

-- LINK : https://www.hackerrank.com/challenges/binary-search-tree-1/problem
-- TODO:
-- Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

-- Root: If node is root node.
-- Leaf: If node is leaf node.
-- Inner: If node is neither root nor leaf node.


SELECT  N,
CASE 
    WHEN P IS NULL THEN "Root"
    WHEN N IN (SELECT DISTINCT P FROM BST) THEN " Inner"
    ELSE " Leaf"
END
FROM BST
ORDER BY N;

----------------------------------------------------------------------------------------------------------------------------------------------------------------

-- TODO: Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, 
-- but did not realize her keyboard's  key was broken until after completing the calculation. 
-- She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.
-- Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.

SELECT CEIL(AVG(SALARY) - AVG(REPLACE(SALARY , '0' , ''))) FROM EMPLOYEES;


-- TODO: Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

SELECT SUM(CITY.POPULATION)
FROM CITY 
INNER JOIN COUNTRY
ON CITY.CountryCode = COUNTRY.Code
WHERE COUNTRY.CONTINENT = 'Asia'
GROUP BY COUNTRY.CONTINENT;

----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TODO:  Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
SELECT CITY.name
FROM CITY 
INNER JOIN COUNTRY
ON CITY.CountryCode = COUNTRY.Code
WHERE COUNTRY.CONTINENT = 'Africa';

----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TODO: Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
-- LINK https://www.hackerrank.com/challenges/average-population-of-each-continent/problem

SELECT COUNTRY.Continent, FLOOR(AVG(CITY.POPULATION))
FROM CITY 
INNER JOIN COUNTRY
ON CITY.CountryCode = COUNTRY.Code
GROUP BY COUNTRY.CONTINENT;