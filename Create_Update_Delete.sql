CREATE DATABASE daraz_db;
USE DATABASE daraz_db;

CREATE TABLE products(
	product_id INT(11),
	product_name VARCHAR(20),
	product_type VARCHAR(20),
	product_quantity INT(200)
);

INSERT INTO products(product_id,product_name,product_type,product_quantity)
VALUES(1,'Mobile','Electronics',15),
(2,'Hair Dryer','Home Appliances',23),
(3,'Shoes','Fashion',35),
(4,'Ac','Home Appliances',8),
(5,'Laptop','Electronics',110),
(6,'Watch','Accessories',120),
(7,'Bed Sheets','Home Lifestyle',5),
(8,'Handsfree','Electronics',158),
(9,'Perfume','Beauty',201),
(10,'Washing Machine','Home Appliances',73);

SELECT * FROM products;

UPDATE products 
SET product_quantity=25 WHERE product_id=1;

UPDATE products 
SET product_name='Mens Shoes' WHERE product_id=3;

UPDATE products 
SET product_type='Mens Accessories' WHERE product_id=6;

UPDATE products 
SET product_name='Mens Watch' WHERE product_id=6;

UPDATE products 
SET product_quantity=13 WHERE product_id=10;
SELECT * FROM products;

DELETE FROM products WHERE product_id=3;
DELETE FROM products WHERE product_id=10;
DELETE FROM products WHERE product_id=6;
DELETE FROM products WHERE product_id=8;
DELETE FROM products WHERE product_id=1;

SELECT * FROM products;	

CREATE TABLE customer(
	customer_id INT(11),
	customer_name VARCHAR(20),
	customer_purchased_items INT(11)
);
INSERT INTO customer(customer_id,customer_name,customer_purchased_items)
VALUES(1,"Touqeer",2),
(2,"Izhar",3),
(3,"Hanan",1),
(4,"Israr",2),
(5,"Rafay",5),
(6,"Saqib",5),
(7,"Amresh",5),
(8,"Hamad",5),
(9,"Adeel",5),
(10,"Hashir",5);


SELECT * FROM customer;

UPDATE customer 
SET customer_name='Izhar Nabi' WHERE customer_id=2;

UPDATE customer 
SET customer_name='Hamadullah' WHERE customer_id=8;

UPDATE customer 
SET customer_purchased_items=4 WHERE customer_id=1;

UPDATE customer 
SET customer_name='Hanan Shaikh' WHERE customer_id=3;

UPDATE customer 
SET customer_purchased_items=7 WHERE customer_id=10;
SELECT * FROM customer;

DELETE FROM customer WHERE customer_id=5;

DELETE FROM customer WHERE customer_id=1;

DELETE FROM customer WHERE customer_id=7;

DELETE FROM customer WHERE customer_id=9;

DELETE FROM customer WHERE customer_id=2;

SELECT * FROM customer;


CREATE TABLE customer_cart(
	customer_id INT(11),
	product_id INT(11),
	product_quantity INT(11)
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

UPDATE customer_cart 
SET product_id=3 WHERE customer_id=1;
UPDATE customer_cart 
SET product_quantity=3 WHERE customer_id=10;
UPDATE customer_cart 
SET product_id=20 WHERE customer_id=9;
UPDATE customer_cart 
SET product_quantity=1 WHERE customer_id=3;
UPDATE customer_cart 
SET product_id=5 WHERE customer_id=7;

SELECT * FROM customer_cart;

DELETE FROM customer_cart WHERE customer_id=7;

DELETE FROM customer_cart WHERE customer_id=3;

DELETE FROM customer_cart WHERE customer_id=1;

DELETE FROM customer_cart WHERE customer_id=10;

DELETE FROM customer_cart WHERE customer_id=9;
SELECT * FROM customer_cart;

CREATE TABLE admins(
	admin_id INT(11),
	admin_name VARCHAR(20)
);
INSERT INTO admins(admin_id,admin_name)
VALUES(1,'Haseeb'),
(2,'Hanan'),
(3,'Bux'),
(4,'Irfan'),
(5,'Rajnesh'),
(6,'Sajid'),
(7,'Ibrahim'),
(8,'Sarang'),
(9,'Izhar'),
(10,'Israr');
SELECT * FROM admins;

UPDATE admins 
SET admin_name='Izhar Nabi' WHERE admin_id=9;
UPDATE admins 
SET admin_name='Sajid Qureshi' WHERE admin_id=6;
UPDATE admins 
SET admin_name='Muhammad Haseeb' WHERE admin_id=1;
UPDATE admins 
SET admin_name='Israr Ahmed' WHERE admin_id=10;
UPDATE admins 
SET admin_name='Muhammad Ibrahim' WHERE admin_id=7;
SELECT * FROM admins;

DELETE FROM admins WHERE admin_id=2;
DELETE FROM admins WHERE admin_id=4;
DELETE FROM admins WHERE admin_id=10;
DELETE FROM admins WHERE admin_id=6;
DELETE FROM admins WHERE admin_id=8;
SELECT * FROM admins;


CREATE TABLE order_details(
	customer_id INT(14),
	bill BIGINT(200)
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

UPDATE order_details 
SET bill=550 WHERE customer_id=3;

UPDATE order_details 
SET bill=433 WHERE customer_id=1;

UPDATE order_details 
SET bill=115 WHERE customer_id=7;

UPDATE order_details 
SET bill=55 WHERE customer_id=2;

UPDATE order_details 
SET bill=189 WHERE customer_id=8;
SELECT * FROM order_details;

DELETE FROM order_details WHERE customer_id=3;
DELETE FROM order_details WHERE customer_id=1;
DELETE FROM order_details WHERE customer_id=7;
DELETE FROM order_details WHERE customer_id=9;
DELETE FROM order_details WHERE customer_id=5;
SELECT * FROM order_details;
