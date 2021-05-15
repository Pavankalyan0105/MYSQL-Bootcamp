-- SHOW DATABASES;

-- use photo_store;


-- CREATE TABLE cameras(
--     model_name VARCHAR(30) , 
--     quantity INT
-- );

-- DESC cameras;

-- TODO:  camera table done_

-- DROP TABLE cameras;
-- SHOW TABLES;

-- SHOW TABLES;

-- CREATE TABLE canon__cameras(
--     model_name VARCHAR(30) ,
--     quantity INT
-- );

-- DESC canon__cameras;

-- TODO: changed the tble name from cameras to canon_camers;



-- INSERT INTO canon__cameras
-- VALUES ("80D" , 12) , 
--        ("40D" , 23) , 
--        ("EROS-R" ,30);

-- TODO: inseted data into canon_cameras table


-- DESC canon__cameras;

-- SELECT * FROM canon__cameras;

-- SELECT model_name from canon__cameras;

-- How many 80Ds are there
-- USE photo_store;
-- SELECT * from canon__cameras
-- WHERE model_name = "80D";

SELECT model_name , quantity FROM canon__cameras
WHERE quantity>=10;
