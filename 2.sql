/*Question 2: How big is the canvas after the two expansions?*/

/*Solution:*/
SELECT 
    MAX(x)+1 as canvas_x,
    MAX(y)+1 as canvas_y
FROM placement;