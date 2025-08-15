-- Problem #1683: Invalid Tweets
-- LeetCode Link: https://leetcode.com/problems/invalid-tweets/

-- Write your SQL solution below:
SELECT tweet_id
FROM Tweets
WHERE CHAR_LENGTH(content)>15

