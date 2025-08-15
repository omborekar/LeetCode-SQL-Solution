-- Problem #608: Tree Node
-- LeetCode Link: https://leetcode.com/problems/tree-node/

-- Write your SQL solution below:
SELECT 
    t.id,
    (CASE
        WHEN t.p_id IS NULL THEN 'Root'
        WHEN t.id IN (SELECT p_id
                    FROM Tree
                    WHERE p_id IS NOT NULL) THEN 'Inner'
        ELSE 'Leaf'
    END) AS type
FROM Tree t

