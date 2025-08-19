# Write your MySQL query statement below
SELECT 
    u.user_id AS buyer_id,
    u.join_date,
    IFNULL(Count(o.item_id),0) AS orders_in_2019 
FROM
    Users u
LEFT JOIN
    Orders o
ON
    u.user_id = o.buyer_id
    AND o.order_date>='2019-01-01' AND o.order_date<='2019-12-31'

GROUP BY
    u.user_id
