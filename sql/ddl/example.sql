
CREATE DATABASE IF NOT EXISTS test2db;
USE testdb;

CREATE TABLE customers (
	customer_id INT AUTO_INCREMENT,
  age INT NOT NULL,
  email VARCHAR(45) NOT NULL,
  date_placed date NOT NULL,
  PRIMARY KEY  (customer_id)
);


CREATE TABLE products (
	product_id INT AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  date_placed date NOT NULL,
  PRIMARY KEY  (product_id)
);


CREATE TABLE orders (
	order_id INT AUTO_INCREMENT,
	quantity INT NOT NULL, 
	date_placed date NOT NULL,
	fk_customer_id INT NOT NULL,
	fk_product_id INT NOT NULL,
	FOREIGN KEY (fk_customer_id) REFERENCES customers(customer_id),
	FOREIGN KEY (fk_product_id) REFERENCES products(product_id),
	PRIMARY KEY (order_id)
);

CREATE TABLE testorders (
	order_id INT AUTO_INCREMENT,
	quantity INT NOT NULL, 
	date_placed date NOT NULL,
    	fk_customer_id INT NOT NULL,
	FOREIGN KEY (fk_customer_id) REFERENCES customers(customer_id),
	PRIMARY KEY (order_id)
);

INSERT INTO testorders(quantity, date_placed,fk_customer_id)
VALUES (3, "2002-06-25",6);
DROP TABLE testorders;
show tables;
DESC customers;
DROP TABLE customers;
DROP TABLE products;
DROP TABLE orders;

INSERT INTO customers (email,age, date_placed)
VALUES ("mindofstealer@gmail.com", 27, "2003-04-15"),
("thegreatshowman534@gmail.com", 39, "2006-07-011"),
("michaeljordan423@aol.com", 45, "2005-07-24"),
("itain'tcheesy09@hotmail.com", 19, "2004-03-21"),
("jamesgordanram43@gmail.com", 26, "2020-03-13");
UPDATE customers SET email="this work" WHERE email="test@test.com";
DELETE FROM customers WHERE email="this work";
SELECT * FROM customers;

INSERT INTO products (name, date_placed)
VALUES ("Pokemon","2003-04-15"),
("Mortal Kombat","2004-05-25"),
("GTA","2006-07-01"),
("Among us","2005-07-24"),
("COD","2008-08-14");
SELECT * FROM products;

INSERT INTO orders (quantity, date_placed, fk_customer_id, fk_product_id)
VALUES (3, "2002-06-25", 6,1);
SELECT * FROM orders;
desc orders;

SELECT  name FROM products;
SELECT * FROM products WHERE name = "Nintento 64";
SELECT * FROM customers WHERE age > 20;
SELECT * FROM customers WHERE age < 20;

SELECT c.date AS customer_date, p.date AS product_date FROM customers c JOIN products p ON customer_date = product_date;