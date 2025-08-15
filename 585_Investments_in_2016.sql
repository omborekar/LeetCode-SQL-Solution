-- Problem #585: Investments in 2016
-- LeetCode Link: https://leetcode.com/problems/investments-in-2016/

-- Write your SQL solution below:

WITH location AS (
    SELECT pid,
           tiv_2015,
           tiv_2016,
           CONCAT(lat, ' ', lon) AS lc
    FROM Insurance

)

SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM location a
WHERE tiv_2015 IN (
    SELECT tiv_2015
    FROM location
    GROUP BY tiv_2015
    HAVING COUNT(DISTINCT lc) > 1
)
AND lc IN (
    SELECT lc
    FROM location
    GROUP BY lc
    HAVING COUNT(*) = 1
);

