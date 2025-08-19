# Write your MySQL query statement below
SELECT c.customer_id
FROM Customer c
JOIN Product p USING(product_key)
GROUP BY c.customer_id
HAVING COUNT(DISTINCT c.product_key)>=(
    SELECT COUNT(product_key) FROM Product
);