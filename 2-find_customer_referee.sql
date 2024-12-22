/*
Table: Customer
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id.         | int     |
| name        | varchar |
| referee_id  | int     |
+-------------+---------+
id is the PK.
Each row is the id of a customer, their name and the id of the customer who referred them.


Question:
Find the names of the customer that are not referred by the customer with id =2.

Results:

+------+
| name |
+------+
| Will |
| Jane |
| Bill |
| Zack |
+------+

*/

-- create table
CREATE TABLE Customer (
  id          INTEGER PRIMARY KEY,
  name        VARCHAR(4),
  referee_id  TINYINT
);

-- insert data
INSERT INTO Customer VALUES (1, 'Will', NULL);
INSERT INTO Customer VALUES (2, 'Jane', NULL);
INSERT INTO Customer VALUES (3, 'Alex', 2);
INSERT INTO Customer VALUES (4, 'Bill', NULL);
INSERT INTO Customer VALUES (5, 'Zack', 1);
INSERT INTO Customer VALUES (6, 'Mark', 2);


-- Answer
SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL