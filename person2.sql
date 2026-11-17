CREATE table employees (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade char(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);

ALTER table employees
 ALTER COLUMN last_name set NOT NULL;

INSERT INTO employees (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
('Arif',    'Mahmud',   24, 'B+', 'Computer Science',    'arif.mahmud@example.com',    '2002-06-11', 'A+',  'Bangladesh'),
('Tania',   'Sultana',  22, 'A',  'Mathematics',         'tania.sultana@example.com',  '2004-01-28', 'O+',  'Bangladesh'),
('Rafi',    'Karim',    26, 'B',  'Physics',             'rafi.karim@example.com',     '2000-09-05', 'B-',  'India'),
('Nusrat',  'Jahan',    20, 'A+', 'Chemistry',           'nusrat.jahan@example.com',   '2006-03-17', 'AB+', 'Bangladesh'),
('Habib',   'Siddiqui', 29, 'C',  'Economics',           'habib.siddiqui@example.com', '1997-12-22', 'O-',  'Pakistan'),
('Mehnaz',  'Haque',    23, 'A-', 'Biology',             'mehnaz.haque@example.com',   '2003-07-30', 'A-',  'Bangladesh'),
('Zahid',   'Alam',     27, 'B+', 'Engineering',         'zahid.alam@example.com',     '1999-02-14', 'B+',  'Nepal'),
('Priya',   'Das',      21, 'A',  'Business',            'priya.das@example.com',      '2005-10-08', 'O+',  'India'),
('Shafin',  'Ahmed',    25, 'B',  'English',             'shafin.ahmed@example.com',   '2001-05-26', 'A+',  'Bangladesh'),
('Rina',    'Parvin',   30, 'C+', 'Software Engineering','rina.parvin@example.com',    '1996-08-15', 'AB-', 'Bangladesh'),
('Omar',    'Faruk',    28, 'A-', 'Computer Science',    'omar.faruk@example.com',     '1998-04-01', 'B+',  'Sri Lanka'),
('Sumaiya', 'Khatun',   19, 'A',  'Mathematics',         'sumaiya.khatun@example.com', '2007-11-19', 'O+',  'Bangladesh'),
('Jamal',   'Uddin',    32, 'B-', 'Physics',             'jamal.uddin@example.com',    '1994-06-23', 'A-',  'Bangladesh'),
('Farhana', 'Yasmin',   24, 'B+', 'Chemistry',           'farhana.yasmin@example.com', '2002-12-09', 'B-',  'Pakistan'),
('Naeem',   'Bhuiyan',  26, 'A',  'Business',            'naeem.bhuiyan@example.com',  '2000-01-12', 'O-',  'Bangladesh');



SELECT * FROM employees ORDER BY age ASC;
SELECT first_name, email, age FROM employees;


SELECT DISTINCT country from employees;

SELECT * from employees WHERE grade = 'A-' AND course = 'Accounting';

SELECT * from employees WHERE (blood_group = 'B+' OR country = 'Bangladesh') and age>=30;

SELECT * from employees WHERE country <> 'Bangladesh';

SELECT concat (first_name, ' ', last_name) as full_name,  * FROM employees;

-- How to calculate the average age
-- more functions can be max, sum, min and these are all aggregate function and returns one value

SELECT avg(age) from employees;

SELECT * from employees WHERE NOT country = 'Bangladesh';

-- COALESCE helps to set a default value in NULL VALUES
-- select COALESCE (email, 'not provided') from employees;p;o0l0l000000000000000000000000000000000000000000000000

SELECT * from employees WHERE country in ('Bangladesh', 'Nepal');

SELECT * from employees
 WHERE age BETWEEN 19 and 22;

 SELECT * from employees
 WHERE first_name LIKE '%a';

 SELECT * from employees
 WHERE first_name ILIKE 'a%';



-- LIMIT OFFSET used for pagination logic
SELECT * from employees
 LIMIT 5 OFFSET 5 * 0; -- 1-5 data


SELECT * from employees
 LIMIT 5 OFFSET 5 * 1; -- 6 to 10 data

 DELETE  from employees
  WHERE country = 'Nepal';

UPDATE employees
 set email = 'azmainemushfiq@gmail.com'
 WHERE student_id = 5;

 select country, count(*) from employees
   GROUP BY country;

   select country, avg(age) from employees
    GROUP BY country;
      HAVING avg(age) > 25; -- Having is used in a group and where is used for single value columns

    -- Count Students Born is each year
    select extract(year from dob) as birth_year, count(*)
      FROM employees
       GROUP BY birth_year;

