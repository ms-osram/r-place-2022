/*Question 8: Which user placed the most white tiles that lasted until the end of the Whiteout?*/

-- get the last non-whiteout time

SELECT DATETIME(time,'unixepoch')
-- you can do your selects here, and your conditionals below
FROM (
SELECT time 
FROM placement
JOIN color 
ON placement.color = color.id
WHERE red != 255 AND green != 255 AND blue != 255
ORDER BY time DESC
LIMIT 1
) as sub
;
-- as long as you're guaranteed that this piece of query generates the last ;