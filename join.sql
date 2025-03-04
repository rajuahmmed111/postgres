-- Active: 1740560784691@@127.0.0.1@5432@ph@public
-- SELECT post.id FROM "post"  JOIN "user" ON post.user_id = "user".id; --provide context(post.id)
-- SELECT p.id FROM "post" as p JOIN "user" as u ON p.user_id = u.id; --provide context(post.id)


-- inner join
SELECT p.id FROM "post" as p INNER JOIN "user" as u ON p.user_id = u.id; --provide context(post.id)


-- LEFT JOIN
SELECT * FROM "post" as p LEFT JOIN "user" as u ON p.user_id = u.id; -- provide context(post.id)

-- RIGHT JOIN

SELECT * FROM "post" as p RIGHT JOIN "user" as u ON p.user_id = u.id; -- provide context(post.id)

-- show post result
SELECT * FROM post;

INSERT INTO post (id, title, user_id) VALUES
(6, 'this is a post title', NULL);

-- full join
SELECT * FROM post as p 
FULL JOIN "user" as u ON p.user_id = u.id