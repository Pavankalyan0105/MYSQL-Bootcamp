-- TODO: LIKE

-- SELECT stu_fname , email from students WHERE stu_fname LIKE '%sh';

-- TODO: REGEXP ^
-- SELECT stu_fname , email from students WHERE stu_fname REGEXP '^p';

-- TODO: REGEXP $
-- SELECT stu_fname , email from students WHERE email REGEXP 'com$';
-- SELECT stu_fname , email from students WHERE stu_fname REGEXP 'i$';


-- TODO: REGEXP |
-- SELECT stu_fname , email from students WHERE stu_fname REGEXP 'sh|ki';



-- TODO: REGEXP []  returns if one of the char in list is present 
-- SELECT stu_fname , email from students WHERE stu_fname REGEXP '[pk]';

-- TODO: REGEXP [a-b].[d]  
-- SELECT stu_fname , email from students WHERE stu_fname REGEXP '[ik].[e]';

-- TODO: REGEXP [^pa] 
-- SELECT stu_fname , email from students WHERE stu_fname REGEXP '[^k]';


-- TODO: mode
-- SET @@sql_mode='';

-- TODO: GROUP BY
-- SELECT stu_fname , signup_month FROM students
-- GROUP BY signup_month;

-- SELECT stu_fname , signup_month , COUNT(*) AS count FROM students
-- GROUP BY signup_month;

-- TODO: MIN AND MAX

SELECT stu_fname , login_count FROM students
WHERE login_count = (SELECT MAX(login_count) FROM students);


SELECT stu_fname , login_count FROM students
WHERE login_count = (SELECT MIN(login_count) FROM students);
