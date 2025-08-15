-- Problem #602: Friend Requests II Who Has the Most Friends
-- LeetCode Link: https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/

-- Write your SQL solution below:

SELECT id  AS id,COUNT(*) AS num
FROM (
    SELECT accepter_id AS id,requester_id AS friend_id
    FROM RequestAccepted

    UNION

    SELECT requester_id AS id,accepter_id AS friend_id
    FROM RequestAccepted


) AS FriendsList
GROUP BY id
ORDER BY num DESC
LIMIT 1 
