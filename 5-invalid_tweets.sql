/*
Table: Tweets
+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| tweet_id       | int     |
| content        | varchar |
+----------------+---------+

tweed_id is no PK.
content consistis of characters on an American Keyboard, and no special characters.
The tables contains the tweets from a social media app.


Question:
Write a query to find the IDs of the invalid tweets.
The tweet is consider invalid if the tweet size is greater than 15.

Results:

+----------+
| tweet_id |
+----------+
| 2        |
+----------+
*/

-- create table
CREATE TABLE Tweets (
  tweet_id    INT PRIMARY KEY,
  content     VARCHAR(100)
);

-- insert data
INSERT INTO Tweets VALUES (1,'Let us Code');
INSERT INTO Tweets VALUES (2,'More than fifteen chars are here!');

-- Answer
SELECT tweet_id
FROM Tweets
WHERE CHAR_LENGTH(content) >15;