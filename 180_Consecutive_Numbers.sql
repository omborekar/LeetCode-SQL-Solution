-- Problem #180: Consecutive Numbers
-- LeetCode Link: https://leetcode.com/problems/consecutive-numbers/

-- Write your SQL solution below:

-- SELECT DISTINCT l1.num AS ConsecutiveNums 
-- FROM Logs l1
-- JOIN Logs l2 ON l2.id=l1.id+1
-- Join Logs l3 ON l3.id=l1.id+2
-- WHERE l1.num=l2.num AND l2.num=l3.num

SELECT DISTINCT
    l1.Num AS ConsecutiveNums
FROM
    Logs l1,
    Logs l2,
    Logs l3
WHERE
    l1.Id = l2.Id - 1
    AND l2.Id = l3.Id - 1
    AND l1.Num = l2.Num
    AND l2.Num = l3.Num
;
