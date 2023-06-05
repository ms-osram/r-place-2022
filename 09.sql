/*Question 9: How many users have the First Placer '22 trophy? (i.e. how many users placed a color first on a tile)*/

SELECT COUNT(DISTINCT user)
FROM (
    SELECT x, y, user, MIN(time) 
    FROM placement
    GROUP BY x, y
) as t;