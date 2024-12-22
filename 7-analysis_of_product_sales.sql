/*
Table: Sales
+-------------+-------+
| Column Name | Type  |
+-------------+-------+
| sale_id     | int   |
| product_id  | int   |
| year        | int   |
| quantity    | int   |
| price       | int   |
+-------------+-------+

The composite key is (sales_id,year).
product_id is a foreign key to Product table.
Each row of this table represents a sale on the product product_id in a certain year.
The price is per unit of product.


Table: Product
+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| product_id   | int     |
| product_name | varchar |
+--------------+---------+

the product_id is the PK.
Each row indicates the product name of each product.

Question:
Write a query to show the product name, year, and price for each sale_id from the Sales table.

Results:

+--------------+-------+-------+
| product_name | year  | price |
+--------------+-------+-------+
| Nokia        | 2008  | 5000  |
| Nokia        | 2009  | 5000  |
| Apple        | 2011  | 9000  |
+--------------+-------+-------+
*/

-- create table
CREATE TABLE Sales (
  sale_id           INT,
  product_id        INT,
  year              INT,
  quantity          INT,
  price             INT
);

-- insert data
INSERT INTO Sales VALUES (1,100,2008,10,5000);
INSERT INTO Sales VALUES (2,100,2009,12,5000);
INSERT INTO Sales VALUES (7,200,2011,15,9000);

CREATE TABLE Product (
  product_id        INT,
  product_name      VARCHAR(100)
);

-- insert data
INSERT INTO Product VALUES (100,'Nokia ');
INSERT INTO Product VALUES (200,'Apple');
INSERT INTO Product VALUES (300,'Samsung');


-- Answer
SELECT p.product_name,s.year,s.price
FROM Sales AS s
LEFT JOIN Product AS p ON s.product_id = p.product_id;
