CREATE TABLE student2 (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(20) NOT NULL,
    age INTEGER CHECK (age >= 18)
);

INSERT INTO student2 (user_name, age) VALUES
('Fatina', 26),
('Rahima', 24),
('Nadiaa', 22);

SELECT * FROM student;

ALTER TABLE student2
  ADD COLUMN email VARCHAR(25) DEFAULT 'default@email.com' NOT NULL;

INSERT INTO student2 (user_name, age) VALUES ('Sam', 45);

SELECT * FROM student2;

CREATE TABLE person (
     id SERIAL PRIMARY KEY,
     user_name VARCHAR(20) NOT NULL,
     age INTEGER CHECK (age >= 18)
);

INSERT into person (id, user_name, age) VALUES
  (1, 'Fatin', 26),
(2, 'Rahim', 24),
(3, 'Nadia', 22),
(4, 'Karim', 28),
(5, 'Sara', 19),
(6, 'Imran', 31),
(7, 'Laila', 21),
(8, 'Tanvir', 25),
(9, 'Mim', 23),
(10, 'Sakib', 27);

SELECT * from person;

ALTER table person
 ADD COLUMN email VARCHAR(25) DEFAULT 'abd@gmail.com' NOT NULL;

 INSERT INTO person (id, user_name, age, email) VALUES (12, 'Sam', 45, 'azmaine@gmail.com');

ALTER table person 
 ALTER COLUMN age set NOT NULL;

ALTER table person 
 ALTER COLUMN user_name type VARCHAR(50);

ALTER table person 
 ADD CONSTRAINT pk_person_id PRIMARY(id);


 SELECT * from person;

TRUNCATE table student;
 
  