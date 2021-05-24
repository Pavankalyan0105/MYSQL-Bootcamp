--  TODO: DATE  , TIME , DATE-TIME
-- CREATE DATABASE testing;
-- USE testing;

-- CREATE TABLE users(
--     name VARCHAR(32),
--     col1 DATE, 
--     col2 TIME, 
--     col3 DATETIME
-- );



-- INSERT INTO users(name, col1 , col2 , col3)
-- VALUES('shaw' , '2021-05-17' , '12:29:34' , '2021-05-17 12:29:32');


-- INSERT INTO users(name, col1 , col2 , col3)
-- VALUES('iyer' , NOW() , NOW() , NOW());

SELECT name , col1 , DATE_FORMAT(col1 , '%d / %m / %Y') AS DATES from users; 