/*Question 4: 

There are three major events that happened in 2022 /r/Place: The first canvas expansion, the second canvas expansion, and the Whiteout.
    4.a. At what timestamp was the first tile placed on the first canvas expansion?
    4.b. At what timestamp was the first tile placed on the second canvas expansion?
    4.c. At what timestamp was the first Whiteout tile placed?

*/

/*Solution 4.a:*/
/*SELECT MIN(DATETIME(time, 'unixepoch'))
FROM placement
WHERE x > 999;*/


/*Solution 4.b:*/
/*SELECT MIN(DATETIME(time, 'unixepoch'))
FROM placement
WHERE y > 999;*/

/*Solution 4.c:*/

SELECT color, DATETIME(time, 'unixepoch')
FROM placement as p
join color as c
WHERE c.red = 255 AND c.green = 255 AND c.blue = 255 
GROUP BY color, time
ORDER BY time DESC;
