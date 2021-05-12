
CREATE DATABASE IF NOT EXISTS test2db;
USE testdb;

CREATE TABLE customers (
	customer_id INT NOT NULL,
  age INT NOT NULL,
  email VARCHAR(45) NOT NULL,
  date_placed DATETIME NOT NULL,
  PRIMARY KEY  (customer_id)
);

CREATE TABLE products (
	product_id INT NOT NULL,
  name VARCHAR(45) NOT NULL,
  date_placed DATETIME NOT NULL,
  PRIMARY KEY  (product_id)
);


CREATE TABLE orders (
	order_id INT NOT NULL,
	quantity INT NOT NULL, 
	date_placed DATETIME NOT NULL,
	fk_customer_id INT NOT NULL,
	fk_product_id INT NOT NULL,
	FOREIGN KEY (fk_customer_id) REFERENCES customers(customer_id),
	FOREIGN KEY (fk_product_id) REFERENCES products(product_id),
	PRIMARY KEY (order_id)
);

show tables;
-- DROP TABLE customers;
-- DROP TABLE products;
-- DROP TABLE orders;

