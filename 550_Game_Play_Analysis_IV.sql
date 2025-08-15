-- Problem #550: Game Play Analysis IV
-- LeetCode Link: https://leetcode.com/problems/game-play-analysis-iv/

-- Write your SQL solution below:

WITH FirstLogin AS (
    SELECT
        player_id,
        MIN(event_date) AS first_login_date
    FROM Activity
    GROUP BY player_id
),
NextDayLogin AS (
    SELECT
        f.player_id
    FROM FirstLogin f
    JOIN Activity a
      ON a.player_id = f.player_id
     AND a.event_date = DATE_ADD(f.first_login_date, INTERVAL 1 DAY)
    GROUP BY f.player_id
)
SELECT
    ROUND(
        (SELECT COUNT(*) FROM NextDayLogin) / (SELECT COUNT(DISTINCT player_id) FROM Activity),
        2
    ) AS fraction
;

