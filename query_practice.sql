-- Filter records by columns 
SELECT first_name, last_name FROM person;

-- Filter records using WHERE Clause, AND, OR, LIMIT, OFFSET, FETCH, IN, BETWEEN
SELECT * FROM person WHERE gender='FEMALE';
SELECT * FROM person WHERE gender='MALE' AND first_name ='Damien';
SELECT * FROM person WHERE gender='MALE' OR first_name ='Arasha';
SELECT * FROM person WHERE gender='MALE' LIMIT 2;
SELECT * FROM person OFFSET 1 FETCH FIRST 2 ROW ONLY;
SELECT * FROM person WHERE date_of_birth IN ('1980-10-31', '1982-10-31', '1982-12-31')
SELECT * FROM person WHERE date_of_birth BETWEEN DATE '1980-01-01' AND '1990-01-01';

-- Substitute NULL value for default value using COALESCE
SELECT COALESCE(email, 'Email not provided') FROM person;

-- NULL IF returns null if both values are same, else returns first value
SELECT NULLIF(10,10);
SELECT NULLIF(12,10);
SELECT 10 / NULLIF(0,0);
SELECT COALESCE(10 / NULLIF(0,0), 0);

-- Sort records as ASC or DESC
SELECT * FROM person ORDER BY first_name ;
SELECT * FROM person ORDER BY first_name DESC;

-- Search using LIKE/ILIKE - ILIKE is case insensitive
SELECT * FROM person WHERE email LIKE '%.com';
SELECT * FROM person WHERE first_name LIKE 'A%';
SELECT * FROM person WHERE first_name ILIKE 'a%';

-- Perform aggregate calculations
SELECT MAX(price) FROM car;
SELECT MIN(price) FROM car;
SELECT ROUND(AVG(price)) FROM car;
SELECT SUM(price) FROM car;

-- Calculate 10% Discount price and price difference for each car
SELECT id,make,model,price, ROUND(price*.10,2), ROUND(price - (price*.10), 2) FROM car;
SELECT id,make,model,price AS original_price, ROUND(price*.10,2) AS discount_ten_percent, ROUND(price - (price*.10), 2) AS price_difference FROM car;

-- Group and analyse data
SELECT gender, COUNT(*) FROM person GROUP BY gender;
SELECT make,model, MIN(price) FROM car GROUP BY make, model;
SELECT make, SUM(price) FROM car GROUP BY make;