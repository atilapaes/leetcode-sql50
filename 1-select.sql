/*
The table is named Products

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| product_id  | int     |
| low_fats    | enum    |
| recyclable  | enum    |
+-------------+---------+
product_id is the PK.
low_fats and recyclable are ENUM (category) of type ('Y', 'N') where 'Y' means this product is low fat and 'N' means it is not.


Question:
What are the products that are both low fat and recyclable.
*/

-- create table
CREATE TABLE Products (
  product_id INTEGER PRIMARY KEY,
  low_fats   enum ('Y', 'N'),
  recyclable enum ('Y', 'N')
);

-- insert data
INSERT INTO Products VALUES (0, 'Y', 'N');
INSERT INTO Products VALUES (1, 'Y', 'Y');
INSERT INTO Products VALUES (2, 'N', 'Y');
INSERT INTO Products VALUES (3, 'Y', 'Y');
INSERT INTO Products VALUES (4, 'N', 'N');

-- fetch
-- SELECT * FROM Products

-- Write your MySQL query statement below
SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y'