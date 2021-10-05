-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.

-- Add 5 orders to the orders table.
-- Make orders for at least two different people.
CREATE TABLE orders (
	order_id SERIAL PRIMARY KEY,
	person_id NUMERIC, 
	product_name VARCHAR(20), 
    product_price NUMERIC, 
    quantity NUMERIC
);


INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES
(113, 'Toast', 1.45, 3),
(153, 'Bread', 1.75, 1),
(163, 'Egg', 1.65, 1),
(174, 'Broccoli', 1.23, 5),
(164, 'Chocolate', 3.45, 7);

-- person_id should be different for different people.

-- Select all the records from the orders table.
SELECT * FROM orders;

-- Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;

-- Calculate the total order price.

SELECT SUM(product_price) FROM orders;

-- Calculate the total order price by a single person_id.

SELECT SUM(person_id) FROM orders WHERE person_id = 153;