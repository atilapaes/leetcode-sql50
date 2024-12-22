/*
Table: World
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| name        | varchar |
| continent   | varchar |
| area        | int     |
| population  | int     |
| gdp         | bigint  |
+-------------+---------+
name is the PK.
Each row is this table provides information about the name of a country, the continent that is belongs to, its area, the population and its GDP value.

The country is considered big if:
1-It has an area of at least three million km^2, OR
2-It has a population of at least 25 million.



Question:
Write a query to find the name, population, and area of the big countries.

Results:

+-------------+------------+---------+
| name        | population | area    |
+-------------+------------+---------+
| Afghanistan | 25500100   | 652230  |
| Algeria     | 37100000   | 2381741 |
+-------------+------------+---------+

*/

-- create table
CREATE TABLE World (
  name          VARCHAR(20) PRIMARY KEY,
  continent     VARCHAR(20),
  area          INT,
  population    INT,
  gdp           bigint
);

-- insert data
INSERT INTO World VALUES ('Afghanistan', 'Asia', 652230, 25500100, 20343000000);
INSERT INTO World VALUES ('Albania', 'Europe', 28748, 2831741, 12960000000);
INSERT INTO World VALUES ('Algeria',  'Africa',2381741, 37100000, 188681000000);
INSERT INTO World VALUES ('Andorra', 'Europe', 468, 78115, 3712000000);
INSERT INTO World VALUES ('Angola', 'Africa', 1246700, 20609294, 100990000000);


-- Answer
SELECT name, population, area
FROM World
WHERE area >=3000000 OR population >=25000000