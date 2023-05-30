/*Question 3: Which pixel is the most edited?*/

/*Solution:*/
SELECT c.red,
    c.green,
    c.blue,
    COUNT(*) as HowMany
FROM placement AS p
JOIN color AS c
ON p.color = c.id
GROUP BY c.red, c.green, c.blue
ORDER BY HowMany DESC
LIMIT 1