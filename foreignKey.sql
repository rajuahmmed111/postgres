-- Active: 1740560784691@@127.0.0.1@5432@ph@public
CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

CREATE TABLE "post" (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
)

INSERT INTO "user" (username) VALUES 
                    ('akash'),
                    ('batash'),
                    ('sagor'),
                    ('nodi');

INSERT INTO "post" (title, user_id) VALUES
                    ('First Post', 1),
                    ('Second Post', 2),
                    ('Third Post', 3),
                    ('Fourth Post', 4);


SELECT * FROM "post";

INSERT INTO post (title, user_id) VALUES ('test', NULL);
ALTER TABLE post
   alter COLUMN user_id set NOT NULL;


------ insertion constraint on insert post
-- 1. attempt to insert a new post with the user does not exist
-- 2. inserting a post with a valid user ID
-- 3. attempting to insert a post without specifying the user ID