-- Active: 1740560784691@@127.0.0.1@5432@ph@public
-- SELECT post.id FROM "post"  JOIN "user" ON post.user_id = "user".id; --provide context(post.id)
-- SELECT p.id FROM "post" as p JOIN "user" as u ON p.user_id = u.id; --provide context(post.id)
SELECT p.id FROM "post" as p INNER JOIN "user" as u ON p.user_id = u.id; --provide context(post.id)

SELECT * FROM post;