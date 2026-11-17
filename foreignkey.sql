create table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

create table post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
)

ALTER table post
 ALTER COLUMN user_id set NOT NULL;

INSERT INTO post (title, user_id) VALUES
('Getting Started with TypeScript', 1),
('Understanding Classes and Interfaces', 1),
('Top 10 Photography Tips for Beginners', 2),
('How I Edit My Photos in Lightroom', 2),
('A Beginner''s Guide to SQL Joins', 3),
('Why Indexes Matter in PostgreSQL', 3),
('Object-Oriented Programming Explained', 4),
('Inheritance vs Composition', 4),
('Building My First REST API', 4),
('Tips for Surviving Night Shifts', 4),
('Weekly Productivity Routine', 1),
('Choosing the Right Laptop for Development', 2);

select * from post;

INSERT INTO "user" (username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi');

select * from "user";

-- ON DELETE CASCADE deletes the post also with the userid

-- ON DELETE SET DEFAULT sets a default value while deleting a post 

-- title from post and user from "user"

select title, username from post
  join "user" on post.user_id = "user".id;