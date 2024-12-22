/*
Table: Views
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| article_id    | int     |
| author_id     | int     |
| viewer_id     | int     |
| view_date     | date    |
+---------------+---------+

there is no PK.
Each row is this table indicates that some viewer an article (written by a certain author) on a certain date.
The case  author_id = viewer_id indicates the same person.


Question:
Write a query to list authors that viewed at least one of their own articles.
Sort the answer by id in ascending order.

Results:

+------+
| id   |
+------+
| 4    |
| 7    |
+------+
*/

-- create table
CREATE TABLE Views (
  article_id    INT,
  author_id     INT,
  viewer_id     INT,
  view_date    date
);

-- insert data
INSERT INTO Views VALUES (1,3,5,'2019-08-01');
INSERT INTO Views VALUES (1,3,6, '2019-08-02');
INSERT INTO Views VALUES (2,7,7, '2019-08-01');
INSERT INTO Views VALUES (2,7,6,'2019-08-02');
INSERT INTO Views VALUES (4,7,1, '2019-07-22');
INSERT INTO Views VALUES (3,4,4, '2019-07-21');
INSERT INTO Views VALUES (3,4,4, '2019-07-21');


-- Answer
SELECT DISTINCT(author_id) AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY author_id