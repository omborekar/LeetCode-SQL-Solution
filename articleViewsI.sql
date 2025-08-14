--1148. Article Views I
--https://leetcode.com/problems/article-views-i
SELECT author_id as id
FROM Views
WHERE author_id=viewer_id
Group By author_id
-- HAVING COUNT(*)>=1
ORDER BY author_id 
