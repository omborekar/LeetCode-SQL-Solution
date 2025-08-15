﻿-- Problem #570: Managers with at Least 5 Direct Reports
-- LeetCode Link: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/

-- Write your SQL solution below:

SELECT a.name
FROM Employee a
JOIN Employee b ON a.id= b.managerId
GROUP BY b.managerId 
HAVING COUNT(*)>=5
