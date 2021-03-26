<!--Table - person Instructions 
<!--Create a table called person that records a person's id, name, age, height ( in cm ), city, favorite_color.
<!--id should be an auto-incrementing id/primary key - Use type: SERIAL
CREATE TABLE person ( 
	person_id SERIAL PRIMARY key, 
  name VARCHAR(144),
  age INT,
  height INT,
  city VARCHAR(144),
  favorite_color VARCHAR(200) );
<!--Add 5 different people into the person database.
<!--Remember to not include the person_id because it should auto-increment.
 INSERT INTO person (name,age,height,city,favorite_color)
 VALUES('jared',19,5.9,'CAHNDLER','blue'),
 ('sanders',32,4.6, 'kennewock','red'),
 ('reagan',1,5.5,'pasco','sand'),
  ('lucy',77,8.9,'pasco','sand'),
   ('della',111,4.2,'pasco','sand');


<!--List all the people in the person table by height from tallest to shortest.
SELECT * FROM person
ORDER BY height DESC;

<!--List all the people in the person table by height from shortest to tallest.
SELECT * FROM person
ORDER BY height ASC;

<!--List all the people in the person table by age from oldest to youngest.
SELECT * FROM person
ORDER BY age DESC;

<!--List all the people in the person table older than age 20.
SELECT * FROM person
WHERE age > 20;

<!--List all the people in the person table that are exactly 18.
SELECT * FROM person
WHERE age = 18;
<!--List all the people in the person table that are less than 20 and older than 30.
SELECT * FROM person
WHERE age NOT BETWEEN 20 AND 30;

<!--List all the people in the person table that are not 27 (Use not equals).
SELECT * FROM person
WHERE age <> 17;

<!--List all the people in the person table where their favorite color is not red.
SELECT * FROM person
WHERE favorite_color <> 'red';

<!--List all the people in the person table where their favorite color is not red and is not blue.
SELECT * FROM person
WHERE favorite_color <> 'red' 
AND favorite_color <> 'blue';
<!--List all the people in the person table where their favorite color is orange or green.
SELECT * FROM person
WHERE favorite_color like '_r%';

SELECT * FROM person
WHERE favorite_color IN('green','orange');

SELECT * FROM person
WHERE favorite_color = 'green' OR favorite_color = 'orange';


<!--List all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT * FROM person
WHERE favorite_color IN('green','orange','blue');

<!--List all the people in the person table where their favorite color is yellow or purple (use IN). 

SELECT * FROM person
WHERE favorite_color IN('yellow','purple');

<!--Table - orders Instructions
<!--Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders (
  order_id SERIAL PRIMARY key,
  person_id INT,
  product_name VARChar(200), 
  product_price NUMERIC,
  quantity INT
);
<!--Add 5 orders to the orders table.
<!--Make orders for at least two different people.
<!--person_id should be different for different people.
<!--Select all the records from the orders table.
INSERT INTO orders (person_id,product_name, product_price,quantity)
    VALUES (1,'banana',0.49,6),
       (2,'apple',0.79,10),
       (3,'mango',3.00,3),
       (4,'kiwi',0.50,70),
       (5,'peanut',0.05,1000),
       (0,'golden nugget',1000.00,1);
<!--Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;
<!--Calculate the total order price.
SELECT SUM(product_price * quantity ) FROM orders;
<!--Calculate the total order price by a single person_id.
SELECT SUM(product_price * quantity ) from orders
WHERE person_id = 3;

<!--Table - artist Instructions
-- Add 3 new artists to the artist table. ( It's already created )
INSERT INTO artist (name)
Values('Blink-182'),
('The Killers'),
('FinnsterMAN');
-- Select 10 artists in reverse alphabetical order.
SELECT * FROM artist
ORDER BY name DESC
LIMIT 10;
-- Select 5 artists in alphabetical order.
SELECT * FROM artist
ORDER BY name ASC
LIMIT 5;
-- Select all artists that start with the word 'Black'.
SELECT * FROM artist
WHERE name LIKE 'Black%';
-- Select all artists that contain the word 'Black'.
SELECT * FROM artist
WHERE name ILIKE '%black%';


<!--Table - employee Instructions
-- List all employee first and last names only that live in Calgary.
SELECT first_name,last_name FROM employee
WHERE city in('Calgary');
-- Find the birthdate for the youngest employee.
select * FROM employee
ORDER BY birth_date DESC
LIMIT 1;

 SELECT MAX(birth_date)  FROM employee;

-- Find the birthdate for the oldest employee.
SELECT MIN(birth_date)  FROM employee;

-- Find everyone that reports to Nancy Edwards (Use the ReportsTo column).
-- You will need to query the employee table to find the Id for Nancy Edwards
SELECT * FROM employee
where reports_to = 2;

-- Count how many people live in Lethbridge.
SELECT COUNT(city) FROM employee
where city = 'Lethbridge';

