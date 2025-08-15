-- Problem #1581: Customer Who Visited but Did Not Make Any Transactions
-- LeetCode Link: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/

-- Write your SQL solution below:

SELECT v.customer_id,COUNT(v.visit_id) AS count_no_trans 
FROM Visits v
WHERE v.visit_id NOT IN (SELECT visit_id FROM Transactions)
GROUP BY v.customer_id 
