(SELECT u.name AS results
FROM Users u
JOIN MovieRating r1 ON u.user_id = r1.user_id
GROUP BY u.user_id
HAVING COUNT(*) = (
    SELECT MAX(ratings_count) 
    FROM (
        SELECT COUNT(*) AS ratings_count
        FROM MovieRating
        GROUP BY user_id
    ) AS sub
)
ORDER BY u.name
LIMIT 1 )

UNION ALL
(
SELECT m.title AS results
FROM Movies m
JOIN MovieRating r2 ON m.movie_id =r2.movie_id
WHERE MONTH(created_at) ='2' AND YEAR(created_AT) = '2020'
GROUP BY m.movie_id
ORDER BY AVG(rating) DESC,m.title
LIMIT 1 )