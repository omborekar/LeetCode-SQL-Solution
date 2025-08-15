-- Problem #1378: Replace Employee ID With the Unique Identifier
-- LeetCode Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/

-- Write your SQL solution below:


SELECT u.unique_id,e.name
FROM EmployeeUNI u
RIGHT JOIN Employees e ON e.id=u.id
