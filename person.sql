CREATE TABLE person(
    person_id SERIAL PRIMARY KEY,
    name VARCHAR(20),
    age NUMERIC,
    height NUMERIC,
  	city VARCHAR(20),
  	favorite_color VARCHAR(20)
);



INSERT INTO person (name, age, height, city, favorite_color)
VALUES 
('Emmanuel', 31, 67, 'Austin', 'Red'),
('Sriram', 25, 76, 'San Antonio', 'Yellow'),
('John', 22, 76, 'Dallas', 'Blue'),
('Candy', 30, 65, 'San Jose', 'Green'),
('Pearl', 28, 65, 'San Francisco', 'Orange');

SELECT height FROM person ORDER BY height DESC;
SELECT height FROM person ORDER BY height;
SELECT age FROM person ORDER BY age DESC;
SELECT age FROM person WHERE age > 20; 
SELECT age FROM person WHERE age = 18;
SELECT age FROM person WHERE age < 20 or age > 30;
SELECT age FROM person WHERE age !=27;


-- Select all the people in the person table where their favorite color is not red.
SELECT favorite_color from person WHERE favorite_color != 'Red';
-- Select all the people in the person table where their favorite color is not red and is not blue.
SELECT favorite_color FROM person WHERE favorite_color != 'Red' and favorite_color != 'Blue';
-- Select all the people in the person table where their favorite color is orange or green.
SELECT favorite_color FROM person WHERE favorite_color = 'Orange' and favorite_color = 'Green';
-- Select all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT favorite_color FROM person WHERE favorite_color IN ('Green', 'Orange', 'Blue')
-- Select all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT favorite_color FROM person WHERE favorite_color IN ('Yellow', 'Purple')