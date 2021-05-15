-- TODO:
-- SELECT CONCAT(stu_fname, ' '  ,stu_lname) AS fullname from students;



-- SELECT CONCAT(stu_fname, ' "s login count is  ' ,login_count , '  and course count is ' , course_count) AS info from students;

-- TODO: replace
-- SELECT REPLACE ('Hitesh' , 'h' , '$') AS replaced ;

-- SELECT REPLACE(stu_fname , 'a', '@') AS "@ at a" from students;

-- TODO: TRUNCATED

-- SELECT CONCAT(SUBSTRING(email , 1 , 7) , '...') AS truncated from students;4

-- TODO: REVERSE

-- SELECT REVERSE(email) FROM students;

-- TODO: CHAR_LENGTH

-- SELECT email AS EMAIL , CHAR_LENGTH(email) AS email_length from students;

-- TODO: DISTINCT

-- SELECT DISTINCT stu_fname FROM students;


-- TODO: ORDER BY

-- SELECT DISTINCT stu_fname  , email, login_count  
-- FROM students ORDER BY stu_fname DESC;

-- SELECT DISTINCT stu_fname  , email, login_count  
-- FROM students ORDER BY stu_fname ASC;


-- SELECT DISTINCT stu_fname  , email, login_count  
-- FROM students ORDER BY login_count ASC;


-- TODO: LIMIT
-- top 5 active users 
SELECT DISTINCT stu_fname , login_count from students 
ORDER BY login_count DESC LIMIT 5;  