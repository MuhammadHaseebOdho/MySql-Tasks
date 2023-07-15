CREATE DATABASE daraz_db;
USE DATABASE daraz_db;

CREATE TABLE products(
	product_id INT(11) AUTO_INCREMENT,
	product_name VARCHAR(20),
	product_type VARCHAR(20),
	product_quantity INT(200),
	PRIMARY KEY(product_id)
);

INSERT INTO products(product_name,product_type,product_quantity)
VALUES('Mobile','Electronics',15),
('Hair Dryer','Home Appliances',23),
('Shoes','Fashion',35),
('Ac','Home Appliances',8),
('Laptop','Electronics',110),
('Watch','Accessories',120),
('Bed Sheets','Home Lifestyle',5),
('Handsfree','Electronics',158),
('Perfume','Beauty',201),
('Washing Machine','Home Appliances',73);

SELECT * FROM products;

CREATE TABLE customer(
	customer_id INT(11) AUTO_INCREMENT,
	customer_name VARCHAR(20),
	customer_purchased_items INT(11),
	PRIMARY KEY (customer_id)
);
INSERT INTO customer(customer_name,customer_purchased_items)
VALUES("Touqeer",2),
("Izhar",3),
("Hanan",1),
("Israr",2),
("Rafay",5),
("Saqib",5),
("Amresh",5),
("Hamad",5),
("Adeel",5),
("Hashir",5);


SELECT * FROM customer;

CREATE TABLE customer_cart(
	customer_id INT(11),
	product_id INT(11),
	product_quantity INT(11),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

INSERT INTO customer_cart(customer_id,product_id,product_quantity)
VALUES(2,7,2),
(3,4,5),
(1,7,3),
(4,9,1),
(5,4,4),
(2,1,2),
(1,2,10),
(7,3,7),
(9,2,6),
(10,1,4);

SELECT * FROM customer_cart;

CREATE TABLE admins(
	admin_id INT(11) AUTO_INCREMENT,
	admin_name VARCHAR(20),
	PRIMARY KEY (admin_id)
);
INSERT INTO admins(admin_name)
VALUES('Haseeb'),
('Hanan'),
('Bux'),
('Irfan'),
('Rajnesh'),
('Sajid'),
('Ibrahim'),
('Sarang'),
('Izhar'),
('Israr');
SELECT * FROM admins;

CREATE TABLE order_details(
	customer_id INT(14),
	bill BIGINT(200),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

INSERT INTO order_details(customer_id,bill)
VALUES(3,500),
(6,300),
(7,552),
(1,362),
(2,235),
(5,362),
(9,102),
(4,56),
(10,69),
(8,425);

SELECT * FROM order_details;

ALTER TABLE customer_cart
ADD FOREIGN KEY (product_id) REFERENCES products(product_id);