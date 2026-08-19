CREATE TABLE car (
	car_uid UUID NOT NULL PRIMARY KEY,
	make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price NUMERIC(19,2) NOT NULL CHECK (price>0)
);

-- Foreign Key which references id column in car table. One Person can have a car or not - can be NULL
-- Car id should be unique as a car can be owned by only one person 
CREATE TABLE person (
    person_uid UUID NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(7) NOT NULL,
    date_of_birth DATE NOT NULL,
    email VARCHAR(150),
    car_uid UUID REFERENCES car (car_uid),
    UNIQUE(car_uid),
    UNIQUE(email)
);

INSERT INTO person (person_uid, first_name, last_name, gender, date_of_birth) VALUES (uuid_generate_v4(), 'Anne', 'Mary', 'FEMALE', date '1980-10-31');
INSERT INTO person (person_uid, first_name, last_name, gender, date_of_birth, email) VALUES (uuid_generate_v4(), 'Damien', 'Lovegood', 'MALE', date '1982-10-31', 'damien@gmail.com');
INSERT INTO person (person_uid, first_name, last_name, gender, date_of_birth) VALUES (uuid_generate_v4(), 'Shayne', 'Top', 'MALE', date '1982-12-31');

INSERT INTO car (car_uid, make, model, price) VALUES (uuid_generate_v4(), 'BMW', '6 Series', '12650.05');
INSERT INTO car (car_uid, make, model, price) VALUES (uuid_generate_v4(), 'Dodge', 'Ram 1500', '93582.53');


