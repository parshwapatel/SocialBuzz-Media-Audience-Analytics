use social_buzz;

SELECT 
    t1.category,
    t2.TimeofDay,
    SUM(t3.reactionpopularity) AS Total
FROM
    t1
        RIGHT JOIN
    t2 ON t2.contentid = t1.contentid
        LEFT JOIN
        
    t3 ON t2.reactiontype = t3.reactiontype
GROUP BY t1.category , t2.TimeofDay;