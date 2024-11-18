use social_buzz;

SELECT 
    category, month_value, SUM(reactionpopularity) as Total
FROM
    monthwise_unsumed
GROUP BY category , month_value
ORDER BY category , month_value ASC;