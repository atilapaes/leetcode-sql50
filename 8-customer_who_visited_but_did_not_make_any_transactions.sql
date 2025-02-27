/*
Table: Visits
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| visit_id    | int     |
| customer_id | int     |
+-------------+---------+
visit_id is the column with unique values for this table.
This table contains information about the customers who visited the mall.


Table: Transactions

+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| transaction_id | int     |
| visit_id       | int     |
| amount         | int     |
+----------------+---------+
transaction_id is column with unique values for this table.
This table contains information about the transactions made during the visit_id.

Question:
Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

Return the result table sorted in any order.

The result format is in the following example.
*/

--Solution 1: Getting the list of distinct values of visit_id from the transaction table and making sure the amount is different from zero.
--Then, listing the customer_ids and counting how many times they appear in the visit tables.
-- The relation between the two tables is that the visit_id from the Visits table should not be in the select made in the transaction table, ie, the visit_ids are not listed as making a purchase

SELECT
customer_id,COUNT(*) AS count_no_trans
FROM Visits AS v
WHERE v.visit_id NOT IN (SELECT DISTINCT(visit_id) FROM Transactions WHERE amount !=0)
GROUP BY 1


-- Solution 2: using a LEFT JOIN
-- The idea here is to make a LEFT JOIN with the Visits table being the Visits, and the right table being the transactions
-- When the clause WHERE is set a t.visit_id IS NULL, what remains in the visit table are the records where no purchase/transaction was made. Because if a purchase was made, then the visit_id IS NOT NULL
SELECT
customer_id,COUNT(*) AS count_no_trans
FROM Visits AS v
LEFT JOIN Transactions AS t ON v.visit_id = t.visit_id
WHERE t.visit_id IS NULL
GROUP BY 1



*/
OUTPUT
| customer_id | count_no_trans |
| ----------- | -------------- |
| 30          | 1              |
| 96          | 1              |
| 54          | 2              |
*/
