-- CREATE TABLE customers(
--     id INT NOT NULL AUTO_INCREMENT,
--     name VARCHAR(30) NOT NULL , 
--     email VARCHAR(40) DEFAULT 'email not provided' , 
--     amount INT , 
--     PRIMARY KEY (id)
-- );

-- INSERT INTO customers(name , email , amount)
-- VALUES ('hitesh' , 'hitesh@lco.dev' , 35) ,
--         ('george ' , 'geo@lco.dev' , 45) , 
--         ('shaw' , 'hitesh@gmail.com' , 88) , 
--         ('lina' , 'lina@gmail.com' , 78) , 
--         ('Jimmy' , 'Jimmy@yahoo.com' , 54);

-- TODO: created table and inserted some data;
-- SELECT name FROM customers;

-- SELECT email FROM customers;
-- SELECT amount AS PURCHASES FROM customers;


-- TODO: update tasks;


-- SELECT * FROM customers WHERE name='jimmy';

-- UPDATE customers SET email = 'jimmyco.in' WHERE name='jimmy';

-- SELECT * FROM customers;


-- INSERT INTO customers(name , email , amount)
-- VALUES ('lina' , 'lina@gmail.com', 34);

-- SELECT * FROM customers;

-- UPDATE customers SET email = 'lina@yahoo.com' WHERE name = 'lina';


-- TODO: delete some data


-- DELETE FROM customers WHERE name='hitesh';

-- DELETE FROM customers WHERE name = 'lina';

SELECT * from customers;
