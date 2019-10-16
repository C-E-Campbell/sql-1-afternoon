CREATE TABLE person (
    person_id SERIAL PRIMARY KEY,
    person_name TEXT NOT NULL,
    age INTEGER,
    height INTEGER,
    city VARCHAR(64),
    favorite_color VARCHAR(64)
)

INSERT INTO person (person_name, age, height, city, favorite_color)
VALUES
('charlie', 30, 345234, 'jacksonville', 'black'),
('qwer', 223, 432345, 'a city', 'green'),
('qwedffgr',923, 445, 'b city', 'red'),
('qwfdegfer', 23, 345, 'c city', 'blue'),
('qwsreer', 73, 5, 'd city', 'red')

SELECT * FROM person 
ORDER BY height DESC

SELECT * FROM person 
ORDER BY height 

SELECT * FROM person 
ORDER BY age DESC

SELECT * FROM person 
WHERE age > 20

SELECT * FROM person 
WHERE age = 18

SELECT * FROM person 
WHERE age != 27

SELECT * FROM person 
WHERE favorite_color = 'red'

SELECT * FROM person 
WHERE favorite_color != 'red' AND favorite_color != 'blue'


CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(64),
    product_price NUMERIC,
    quantity INTEGER
)

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES
(1, 'hat', 13, 2),
(2, 'shirt', 32, 4)

SELECT SUM(quantity) FROM orders

SELECT SUM(product_price) FROM orders

SELECT SUM(product_price) FROM orders
WHERE person_id = 1


INSERT INTO artist(name)
VALUES
('charlie1'),
('charlie2'),
('charlie3')

SELECT * FROM artist ORDER BY name DESC LIMIT 10

SELECT * FROM artist ORDER BY name LIMIT 5

SELECT * FROM artist 
WHERE name LIKE 'Black%'

SELECT * FROM artist 
WHERE name LIKE '%Black%'

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary'


SELECT * FROM employee
ORDER BY birth_date DESC LIMIT 1
-- SELECT MIN(birth_date) from employee;
SELECT * FROM employee
ORDER BY birth_date LIMIT 1

SELECT * FROM employee
WHERE reports_to = 2

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge'

SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA'

SELECT MAX(total) FROM invoice

SELECT MIN(total) FROM invoice


SELECT * FROM invoice
WHERE total > 5


SELECT COUNT(total) FROM invoice
WHERE total < 5

Select COUNT(*) FROM invoice 
WHERE billing_state IN ('CA', 'TX', 'AZ')

Select AVG(total) FROM invoice 

Select SUM(total) FROM invoice 
