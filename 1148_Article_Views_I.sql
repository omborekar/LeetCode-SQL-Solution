-- Problem #1148: Article Views I
-- LeetCode Link: https://leetcode.com/problems/article-views-i/

-- Write your SQL solution below:


SELECT author_id as id
FROM Views
WHERE author_id=viewer_id
Group By author_id
-- HAVING COUNT(*)>=1
ORDER BY author_id 