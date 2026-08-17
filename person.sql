CREATE TABLE person (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(7) NOT NULL,
    date_of_birth DATE NOT NULL,
    email VARCHAR(150) 
);

INSERT INTO person (first_name, last_name, gender, date_of_birth) VALUES ('Anne', 'Mary', 'FEMALE', date '1980-10-31');
INSERT INTO person (first_name, last_name, gender, date_of_birth, email) VALUES ('Damien', 'Lovegood', 'MALE', date '1982-10-31', 'damien@gmail.com');
INSERT INTO person (first_name, last_name, gender, date_of_birth) VALUES ('Shayne', 'Top', 'MALE', date '1982-12-31');
INSERT INTO person (first_name, last_name, gender, date_of_birth, email) VALUES ('Arasha', 'Heccox', 'FEMALE', date '1992-12-3', 'arasha@gmail.com');