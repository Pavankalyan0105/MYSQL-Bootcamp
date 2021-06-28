
-- CREATE TABLE employee(
--     name VARCHAR(30) , 
--     salary INT 
-- -- ); 

-- INSERT INTO employee(name, salary) 
-- VALUES("shaw" , 50000) , ('iyer' , 25000) , ('dhawan' , 30000) , ('rabada' , 26000) , ('nokia' , 33000);


-- TODO: GIVE THE Second HIGHEST SALARY

-- SELECT max(salary) , name FROM employee WHERE salary not in (SELECT max(salary) FROM employee);

-- SELECT * from employee ORDER BY salary desc LIMIT n-1,2;

-- SELECT * from employee ORDER BY salary desc LIMIT 1,1;

-- --------------------------------------------------------------------

--  TODO: SQL Query to Find the Highest Salary of Each Department

-- CREATE TABLE department(
--     ID int,
--     SALARY int,
--     NAME Varchar(20),
--     DEPT_ID Varchar(255));

-- INSERT INTO department VALUES (1, 34000, 'ANURAG', 'UI DEVELOPERS');
-- INSERT INTO department VALUES (2, 33000, 'harsh', 'BACKEND DEVELOPERS');
-- INSERT INTO department VALUES (3, 36000, 'SUMIT', 'BACKEND DEVELOPERS');
-- INSERT INTO department VALUES (4, 36000, 'RUHI', 'UI DEVELOPERS');
-- INSERT INTO department VALUES (5, 37000, 'KAE', 'UI DEVELOPERS');

-- from that group : give the max salaray 
--  it doesnot give the corresponding employee name who has the highest salary evn if you try to print ***********IMPORTANT******************
-- SELECT DEPT_ID,MAX(salary) FROM department GROUP BY DEPT_ID;

-- SELECT COUNT(NAME) , DEPT_ID FROM department AS count GROUP BY DEPT_ID;


-- TODO: 3. Display Alternate Records (Top 50 SQL Interview Questions) | GeeksforGeeks

-- it is mysql but in oracle we use rownum as column which have the rownum number 


-- SELECT SALARY,NAME,DEPT_ID FROM department WHERE ID%2=1;


-- TODO: 4. Display Duplicate of a Column| GeeksforGeeks

-- SELECT DEPT_ID FROM department;

-- SELECT DEPT_ID , count(*) FROM department 
-- GROUP BY DEPT_ID HAVING COUNT(*)>1
-- ORDER BY COUNT(*);

--  ------------------------------------------------------------------
-- TODO: REVISE

--  SELECT name , salary FROM employee 
--  ORDER BY salary DESC LIMIT 1,1;

--   SELECT max(salary) as sal FROM department group by DEPT_ID;
 
--  SELECT DEPT_ID from department group by DEPT_ID having count(*)>1;


-- ------------------------------------------------------------------

-- TODO: PATTERN MATCHING 

-- SELECT NAME FROM department WHERE NAME LIKE "M%";
-- SELECT NAME FROM department WHERE NAME LIKE "%T";
-- SELECT NAME FROM department WHERE NAME LIKE "%A%";
-- SELECT NAME FROM department WHERE NAME NOT LIKE "%A%";

-- SELECT NAME FROM department WHERE NAME LIKE "_____";
-- 2nd letter as L and fourth letter as m
-- SELECT NAME FROM department WHERE NAME LIKE "_U_I%";

--  contains 2 L s
-- SELECT NAME FROM department WHERE NAME LIKE "A%G";



--  TODO: Display nth row in SQL 

-- SELECT * FROM department LIMIT n-1,1;

-- SELECT * FROM department LIMIT 2,1;

-- IN PURE SQL
-- SELECT * FROM department WHERE rownum<=3 minus 
-- SELECT * FROM department WHERE rownum<=3;



-- TODO: UNION and UNION ALL

--  columns should have same data type and it removes duplicates
-- SELECT NAME FROM department
-- UNION 
-- SELECT name FROM employee;


-- dont remove duplicates .
-- SELECT SALARY,NAME from department union all  select name,salary  from employee;






