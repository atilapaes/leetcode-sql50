/*
Table: Employees
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| name          | varchar |
+---------------+---------+

id is no PK.
Each row of this table represents the id and name of an employee.


Table: EmployeeUNI
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| unique_id     | int     |
+---------------+---------+

The composite key is (id,unique_id)
Each row has the id and the unique_id of an employee in the company.

Question:
Write a query to find the unique id of each user. If a certain user has no unique ID replace, show NUL instead

Results:

+-----------+----------+
| unique_id | name     |
+-----------+----------+
| null      | Alice    |
| null      | Bob      |
| 2         | Meir     |
| 3         | Winston  |
| 1         | Jonathan |
+-----------+----------+
*/

-- create table
CREATE TABLE Employees (
  id           INT PRIMARY KEY,
  name         VARCHAR(100)
);

-- insert data
INSERT INTO Employees VALUES (1,'Alice');
INSERT INTO Employees VALUES (7,'Bob');
INSERT INTO Employees VALUES (11,'Meir');
INSERT INTO Employees VALUES (90,'Winston');
INSERT INTO Employees VALUES (3,'Jonathan');

CREATE TABLE EmployeesUNI (
  id           INT,
  unique_id    INT
);

-- insert data
INSERT INTO EmployeesUNI VALUES (3,1);
INSERT INTO EmployeesUNI VALUES (11,2);
INSERT INTO EmployeesUNI VALUES (90,3);


-- Answer
SELECT eu.unique_id, e.name
FROM Employees AS e
LEFT JOIN EmployeesUNI AS eu ON eu.id = e.id;
