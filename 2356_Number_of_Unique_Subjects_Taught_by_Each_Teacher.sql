-- Problem #2356: Number of Unique Subjects Taught by Each Teacher
-- LeetCode Link: https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/

-- Write your SQL solution below:

SELECT teacher_id,COUNT(DISTINCT subject_id) AS cnt
FROM Teacher 
GROUP BY teacher_id
