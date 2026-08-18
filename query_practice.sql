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

-- Sort records as ASC or DESC
SELECT * FROM person ORDER BY first_name ;
SELECT * FROM person ORDER BY first_name DESC;

-- Search using LIKE/ILIKE - ILIKE is case insensitive
SELECT * FROM person WHERE email LIKE '%.com';
SELECT * FROM person WHERE first_name LIKE 'A%';
SELECT * FROM person WHERE first_name ILIKE 'a%';

-- Perform aggregate calculations

-- Group and analyse data
SELECT gender, COUNT(*) FROM person GROUP BY gender;