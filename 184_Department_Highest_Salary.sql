-- Problem #184: Department Highest Salary
-- LeetCode Link: https://leetcode.com/problems/department-highest-salary/

-- Write your SQL solution below:

SELECT d.name AS Department,e.name AS Employee,e.salary AS Salary
FROM Employee e
JOIN Department d ON d.id=e.departmentId
WHERE e.salary = (
    SELECT MAX(salary) 
    FROM Employee
    WHERE e.departmentId = departmentId
) 
