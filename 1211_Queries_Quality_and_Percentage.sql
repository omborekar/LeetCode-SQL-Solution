-- Problem #1211: Queries Quality and Percentage
-- LeetCode Link: https://leetcode.com/problems/queries-quality-and-percentage/

-- Write your SQL solution below:

SELECT query_name,
        ROUND(AVG(1.0*rating/NULLIF(position,0)),2)  AS quality,
        ROUND( SUM(CASE WHEN rating<3 THEN 1 ELSE 0 END)*100/COUNT(*),2) AS poor_query_percentage
FROM Queries
GROUP BY query_name
