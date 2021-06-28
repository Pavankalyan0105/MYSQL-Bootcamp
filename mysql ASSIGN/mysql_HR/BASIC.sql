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

