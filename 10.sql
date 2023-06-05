/*Question 10: How many users have the Final Canvas '22 trophy? (i.e. how many users have their colors last until just before the Whiteout)*/

SELECT COUNT(DISTINCT user)
FROM (
    SELECT x, y, user, MAX(time) 
    FROM placement
    GROUP BY x, y
) as t;