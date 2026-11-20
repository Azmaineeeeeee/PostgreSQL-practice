-- Nested query inside another SQL query

CREATE TABLE workers (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT,
    department_name VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);

INSERT INTO workers (employee_name, department_id, department_name, salary, hire_date) VALUES
    ('John Doe', 1, 'HR', 60000.00, '2022-01-10'),
    ('Jane Smith', 2, 'Marketing', 75000.50, '2021-05-22'),
    ('Bob Johnson', 3, 'Finance', 80000.75, '2020-11-15'),
    ('Alice Williams', 4, 'IT', 90000.25, '2019-08-03'),
    ('David Lee', 5, 'Sales', 65000.50, '2020-03-18'),
    ('Sara Brown', 6, 'Engineering', 70000.00, '2021-09-28'),
    ('Mike Miller', 7, 'Customer Support', 55000.75, '2022-02-05'),
    ('Emily Davis', 8, 'Administration', 95000.00, '2018-12-12'),
    ('Chris Wilson', 9, 'Research', 72000.50, '2020-06-30'),
    ('Amy White', 10, 'Quality Assurance', 68000.25, '2021-11-09'),
    ('John Johnson', 1, 'HR', 62000.00, '2022-01-15'),
    ('Jessica Thompson', 2, 'Marketing', 78000.50, '2021-06-05'),
    ('Michael Harris', 3, 'Finance', 85000.75, '2020-11-25'),
    ('Emma Martinez', 4, 'IT', 92000.25, '2019-09-15'),
    ('James Taylor', 5, 'Sales', 67000.50, '2020-04-08'),
    ('Sophia Anderson', 6, 'Engineering', 72000.00, '2021-10-10'),
    ('William Jackson', 7, 'Customer Support', 56000.75, '2022-02-10'),
    ('Olivia Nelson', 8, 'Administration', 97000.00, '2018-12-20'),
    ('Daniel White', 9, 'Research', 73000.50, '2020-07-05'),
    ('Ava Wilson', 10, 'Quality Assurance', 69000.25, '2021-11-15'),
    ('Matthew Brown', 1, 'HR', 63000.00, '2022-01-20'),
    ('Emily Garcia', 2, 'Marketing', 76000.50, '2021-06-15'),
    ('Christopher Allen', 3, 'Finance', 86000.75, '2020-12-05'),
    ('Madison Hall', 4, 'IT', 93000.25, '2019-09-25'),
    ('Andrew Cook', 5, 'Sales', 68000.50, '2020-04-18'),
    ('Abigail Torres', 6, 'Engineering', 73000.00, '2021-10-20'),
    ('Ethan Murphy', 7, 'Customer Support', 57000.75, '2022-02-15'),
    ('Ella King', 8, 'Administration', 98000.00, '2018-12-28'),
    ('Nathan Rivera', 9, 'Research', 74000.50, '2020-07-15'),
    ('Mia Roberts', 10, 'Quality Assurance', 70000.25, '2021-11-20');

SELECT * FROM workers;


-- Receive all salaries which is higher than the highest salary of the hr department

select max(salary) from workers
WHERE department_name = 'HR';

select (salary), department_name, employee_name from workers
WHERE (salary > (select max(salary) from workers
WHERE department_name = 'HR'));

-- subqueries can be used
-- SELECT, FROM, WHERE
-- In SELECT clause we can use subquery which only returns one value/column

