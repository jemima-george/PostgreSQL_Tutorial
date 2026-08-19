-- INNER JOIN: Get common data in both tables
SELECT * FROM person JOIN car ON person.car_id = car.id;
SELECT person.first_name, person.last_name, car.make, car.model, car.price FROM person JOIN car ON person.car_id = car.id;

-- LEFT JOIN: Includes all records in left table and records common in both tables
SELECT * FROM person LEFT JOIN car ON person.car_id = car.id;

-- Create Table
CREATE TABLE person (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(7) NOT NULL,
    date_of_birth DATE NOT NULL,
    email VARCHAR(150) 
);

-- Read Records in Table
SELECT * FROM person

-- Update Row in Table
UPDATE person SET car_id = 1 WHERE id=2;
UPDATE person SET car_id = 2 WHERE id=1;

-- Update Records for person Table with car UUID
UPDATE person SET car_uid = '0280d30e-29e3-43c1-8314-342ddc96738e' WHERE person_uid = 'a8db7092-6538-434f-8bc5-9379d3dd27bc';
UPDATE person SET car_uid = 'deb39323-4cf3-46a3-b361-a77d5d423561' WHERE person_uid = '81154d1f-0fbb-4b60-9692-20d3ae119ce4';

-- View updated records
SELECT * FROM person JOIN car ON car.car_uid = person.car_uid;
SELECT * FROM person JOIN car USING (car_uid);
SELECT * FROM person LEFT JOIN car USING (car_uid);
SELECT * FROM person LEFT JOIN car USING (car_uid) WHERE car.* is NULL;

-- DELETE Row in Table
DELETE FROM car WHERE car_id = 1;

-- DROP Table
DROP TABLE person;
