-- Problem #178: Rank Scores
-- LeetCode Link: https://leetcode.com/problems/rank-scores/

-- Write your SQL solution below:

SELECT 
    score,
    DENSE_RANK() OVER (ORDER BY score DESC) AS 'rank'
FROM 
    Scores;

