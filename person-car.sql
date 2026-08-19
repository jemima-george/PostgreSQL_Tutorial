CREATE TABLE car (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price NUMERIC(19,2) NOT NULL
);

-- Foreign Key which references id column in car table. One Person can have a car or not - can be NULL
-- Car id should be unique as a car can be owned by only one person 
CREATE TABLE person (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(7) NOT NULL,
    date_of_birth DATE NOT NULL,
    email VARCHAR(150),
    car_id BIGINT REFERENCES car (id),
    UNIQUE(car_id)
);

INSERT INTO person (first_name, last_name, gender, date_of_birth) VALUES ('Anne', 'Mary', 'FEMALE', date '1980-10-31');
INSERT INTO person (first_name, last_name, gender, date_of_birth, email) VALUES ('Damien', 'Lovegood', 'MALE', date '1982-10-31', 'damien@gmail.com');
INSERT INTO person (first_name, last_name, gender, date_of_birth) VALUES ('Shayne', 'Top', 'MALE', date '1982-12-31');

INSERT INTO car (id, make, model, price) VALUES (1, 'BMW', '6 Series', '12650.05');
INSERT INTO car (id, make, model, price) VALUES (2, 'Dodge', 'Ram 1500', '93582.53');

UPDATE person SET car_id = 1 WHERE id=2;
UPDATE person SET car_id = 2 WHERE id=1;