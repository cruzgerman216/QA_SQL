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
