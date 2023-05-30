/* Question 13:

- I participated in the event. Can you find out how many possible users is mine?
    - I did not cheat (see previous exercise)
    - I have the First Placer trophy (was able to place the first color on a tile)
    - I do not have the End Game '22 trophy, i.e. I was not able to participate during the Whiteout)
    - I placed colors somewhere in (1178,47) to (1275,85)
    - I placed colors somewhere in (371,828) to (436,869)
    - I placed colors somewhere in (0,166) to (437,254)
    - I placed colors somewhere in (665,672) to (791,785)
    - I placed colors somewhere in (752,577) to (885,600)
    - I placed colors somewhere in (161,307) to (714,832)
    - I have the Final Canvas '22 trophy (my color was able to last just before the Whiteout)
    - If you are able to bring it down to one single user, find out my history.

*/

/*Solution 13:*/

SELECT user
FROM placement
WHERE (1178 <= x AND x <= 1275 AND 47 <= y AND y <= 85)

INTERSECT

SELECT user
FROM placement
WHERE (371 <= x AND x <= 436 AND 828 <= y AND y <= 869)

INTERSECT

SELECT user
FROM placement
WHERE (0 <= x AND x <= 437 AND 166 <= y AND y <= 254)

INTERSECT

SELECT user
FROM placement
WHERE (665 <= x AND x <= 791 AND 672 <= y AND y <= 785)

INTERSECT

SELECT user
FROM placement
WHERE (752 <= x AND x <= 885 AND 577 <= y AND y <= 600)

INTERSECT

SELECT user
FROM placement
WHERE (161 <= x AND x <= 714 AND 307 <= y AND y <= 832)

INTERSECT

SELECT user
FROM placement
WHERE (173 <= x AND x <= 249 AND 493 <= y AND y <= 531);


/*F5XS' r/place history*/

/*Total number of tiles placed*/
SELECT COUNT(*)
FROM placement
WHERE user = '26406168';

/*Coordinates of placed tiles*/
SELECT DATETIME(time, 'unixepoch'), x, y
FROM placement
WHERE user = '26406168';

/*Count of colors used arranged in descending order*/
SELECT c.red, 
    c.green, 
    c.blue, 
    COUNT(*) as HowMany
FROM placement AS p
JOIN color as c
on p.color = c.id
WHERE user = '26406168'
GROUP BY c.red, c.green, c.blue
ORDER BY HowMany DESC;