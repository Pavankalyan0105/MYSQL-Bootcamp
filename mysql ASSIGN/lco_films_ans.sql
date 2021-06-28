-- TODO: m      ❌  
-- film.title , film.release_year , category.name , film.release_year

-- SELECT COUNT(*)
-- FROM ((film
-- JOIN film_category ON film.film_id = film_category.film_id)
-- INNER JOIN  category ON category.category_id = film_category.category_id) WHERE film.release_year =  2018;

-- SELECT category.name , category.category_id,film.release_year ,film.film_id , 
-- COUNT(category.category_id) AS "NOOFFILMS" (FROM category 
-- LEFT JOIN film_category ON film_category.category_id = category.category_id); 
-- -- RIGHT JOIN film ON film.film_id = film_category.film_id) WHERE film.release_year = "2018" GROUP BY category.category_id;

-- -- SELECT category.name , category.category_id , film.release_year 
-- -- FROM category LEFT JOIN film_category ON category.category_id = film

--  - - - - - -  - --  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ONE



-- TODO: update the address of the actor id 36 to "677 Jazz street" ✅
-- UPDATE address
-- INNER JOIN actor ON actor.address_id = address.address_id 
-- SET address.address = "Jazz street"
-- WHERE actor.actor_id = 36;

--  TODO: CHECKING THE RESULT  ✅
-- SELECT * FROM actor
-- INNER JOIN address ON actor.address_id = address.address_id 
-- WHERE actor.actor_id = 36;

--  - - - - - -  - --  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - TWO



--  TODO: ADD THE NEW ACTORS ID : 105 , 95 IN FILM ARSENIC INDEPENDENCE(ID : 41)


-- INSERT INTO actor(actor.actor_id, actor.first_name, actor.last_name) 
-- VALUES(105 , "pavan" ,"kalyan") , (95  , "surya", "sivakumar");

-- INSERT INTO film_actor(film_actor.actor_id, film_actor.film_id) 
-- VALUES(105 , 41) , (95 , 41);

 SELECT actor.first_name , actor.actor_id FROM actor
 INNER JOIN film_actor ON actor.actor_id = film_actor.actor_id
 WHERE film_actor.actor_id = 105; 



--  TODO: CHECKING THE RESULT  ✅


--  - - - - - -  - --  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - THREE


