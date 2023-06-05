/*Question 12:

Certain people cheated in the 2022 /r/Place event such that they placed a color earlier than they're allowed to do so. Also, verified users have a cooldown of 5 minutes. Unverified users have a cooldown of 20 minutes.
    12.a. Find out how many users are confirmed to be verified.
    12.b. Find out how many users are likely to be unverified.
    12.c. Find out how many users cheated.

*/

/*Solution 12.a:*/
SELECT COUNT(DISTINCT user) 
FROM (SELECT *
FROM (
    SELECT user, time, time - LAG(time) OVER (PARTITION BY user ORDER BY time) as interval
    FROM placement
)
GROUP BY user
HAVING MIN(interval) >= (5*60) AND MIN(interval) <= (20*60) AND COUNT(user) > 1 
);

/*Solution 12.b:*/
SELECT COUNT(DISTINCT user)
FROM (SELECT *
FROM (
    SELECT user, time, time - LAG(time) OVER (PARTITION BY user ORDER BY time) as interval
    FROM placement
)
GROUP BY user
HAVING MIN(interval) >= (20*60)
);

/*Solution 12.c:*/
WITH cte AS (
    SELECT user, time, LAG(time) OVER (PARTITION BY user ORDER BY time) as prev_time, time - LAG(time) OVER (PARTITION BY user ORDER BY time) as interval
    FROM placement
)
SELECT COUNT(DISTINCT user)
FROM cte
WHERE interval < 300;