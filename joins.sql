CREATE database Customer
CREATE TABLE Customer(customer_id int NOT NULL PRIMARY KEY, last_name
varchar(15) NOT NULL, first_name varchar(15) NOT NULL, favorite_website varchar(50));
select * FROM Customer
INSERT INTO Customer VALUES(4000,'Jackson','Joe','techonthenet.com');
INSERT INTO Customer VALUES(5000,'Smith','Jane','digminecraft.com'); 
INSERT INTO Customer VALUES(6000,'Ferguson','Samantha','bigactivities.com');
INSERT INTO Customer VALUES(7000,'Reynolds','Allen','checkyourmath.com'); 
INSERT INTO Customer(customer_id, last_name, first_name) VALUES (8000, 'Anderson','Paige');
INSERT INTO Customer VALUES(9000,'Johnson','Derek','techonthenet.com'); 
CREATE TABLE Orders(order_id int NOT NULL, customer_id int, order_date date NOT NULL);
INSERT INTO Orders VALUES (1, 7000,'2016/04/18');
INSERT INTO Orders VALUES (2, 5000,'2016/04/18');
INSERT INTO Orders VALUES (3, 8000,'2016/04/19');
INSERT INTO Orders VALUES (4, 4000,'2016/04/20');
INSERT INTO Orders(order_id, order_date) VALUES (5,'2016/05/01');
select *FROM Orders
SELECT Customer.customer_id, Orders.order_id, Orders.order_date FROM Customer
INNER JOIN Orders ON Customer.customer_id = Orders.customer_id;
SELECT Customer.customer_id, Customer.first_name, Orders.order_id, Orders.order_date FROM Customer 
LEFT JOIN Orders ON Customer.customer_id = Orders.customer_id;
SELECT Customer.customer_id, Customer.favorite_website, Orders.order_id,Orders.order_date FROM Customer 
RIGHT JOIN Orders ON Customer.customer_id = Orders.customer_id;
SELECT Customer.*, Orders.order_id, Orders.order_date FROM Customer 
FULL JOIN Orders ON Customer.customer_id = Orders.customer_id;