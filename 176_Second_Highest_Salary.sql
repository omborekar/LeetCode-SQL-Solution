-- Problem #176: Second Highest Salary
-- LeetCode Link: https://leetcode.com/problems/second-highest-salary/

-- Write your SQL solution below:

SELECT DISTINCT MAX(salary) AS SecondHighestSalary 
FROM Employee
WHERE salary<(
    SELECT MAX(salary)
    FROM Employee
)


