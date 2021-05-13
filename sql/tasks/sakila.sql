USE sakila;
SHOW TABLES;
-- 1
SELECT last_name from actor WHERE first_name = "John";
-- 2
SELECT * from actor WHERE last_name = "Neeson";
-- 3
SELECT * from actor WHERE actor_id % 10 = 0;
-- 4
SELECT description from film WHERE film_id = 100;
-- 5
SELECT * FROM film WHERE rating = "R";
-- 6
SELECT * FROM film WHERE rating != "R";
-- 7
SELECT length FROM film ORDER BY length LIMIT 10;
-- 8
SELECT * FROM film WHERE special_features = "Deleted Scenes";
-- 9
SELECT title FROM film JOIN film_category
ON film.film_id = film_category.film_id
JOIN category 
ON film_category.category_id = category.category_id WHERE category.name = "Horror";

-- bonus examples 
-- 1)
SELECT name FROM language ORDER BY name DESC;
-- 2)
SELECT first_name, last_name FROM actor WHERE last_name like '%son%';
-- 3)
SELECT a.last_name, COUNT(a.last_name) FROM actor a GROUP BY a.last_name HAVING COUNT(a.last_name) = 1 ORDER BY last_name DESC;
-- 4) 
SELECT actor.actor_id, actor.first_name, COUNT(*) as c
FROM actor 
join film_actor 
ON actor.actor_id = film_actor.actor_id
GROUP BY actor.actor_id
ORDER BY c DESC
LIMIT 1;
show tables;
desc film_actor;
