

-- TODO: FOREIGN KEY
-- CREATE DATABASE new_lco;
-- USE new_lco;

-- CREATE TABLE users(
--     id INT AUTO_INCREMENT PRIMARY KEY ,
--     name VARCHAR(20) , 
--     email VARCHAR(50)
-- );

-- CREATE TABLE purchases(
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     order_date DATE , 
--     amount INT,
--     user_id INT ,
--     FOREIGN KEY (user_id) REFERENCES users(id)
-- );

-- INSERT INTO users(name , email)
-- VALUES          ('shaw' , 'shwa@dc.com') , 
--                 ('iyer' , 'shwa@dc.com') , 
--                 ('ashwin' , 'shwa@dc.com') , 
--                 ('rabada' , 'shwa@dc.com'); 


-- INSERT INTO purchases(order_date, amount , user_id)
--             VALUES   ('2021-05-01' , 299 , 1) , 
--                      ('2021-06-03' , 199 , 2) , 
--                      ('2021-02-21' , 0 , 3) ;

INSERT INTO purchases(order_date, amount , user_id)
            VALUES   ('2021-05-01' , 599 , 1);