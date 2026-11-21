select * from workers;

CREATE FUNCTION emp_count()
RETURNS INT LANGUAGE SQL AS
$$
SELECT count(*)::INT FROM workers
$$;

SELECT emp_count();


create FUNCTION delete_emp_id(emp_id INT)
RETURNS void LANGUAGE SQL as
$$
 DELETE from workers WHERE employee_id = emp_id
$$;

SELECT delete_emp_id(29);

-- Creating PROCEDURES
CREATE PROCEDURE remove_test_variable()
LANGUAGE plpgsql
as $$
    DECLARE 
    test_var int;
     BEGIN
     SELECT employee_id into test_var from workers WHERE employee_id = 26;
      DELETE from workers WHERE employee_id = test_var;
     END
$$;

CALL remove_test_variable();

-- TRIGGER in postgres
create table my_users
(
    user_name varchar(50),
    email varchar(100)
);
INSERT into my_users VALUES ('A','a@gmail.com'), ('B', 'b@gmail.com');

select * from my_users;

CREATE Table deleted_user(
    deleted_user_name VARCHAR(50),
    deletedAT TIMESTAMP
);

CREATE or REPLACE FUNCTION save_deleted_user()
RETURNS TRIGGER
LANGUAGE plpgsql 
AS
$$
   BEGIN
     INSERT INTO deleted_user VALUES(OLD.user_name, now());
     raise notice 'Deleted user audit log created';
     RETURN OLD;
   END
$$;

CREATE or REPLACE TRIGGER save_deleted_trigger
before DELETE
on my_users
for each row
EXECUTE FUNCTION save_deleted_user();

DELETE from my_users
WHERE user_name = 'A';

select * from deleted_user;