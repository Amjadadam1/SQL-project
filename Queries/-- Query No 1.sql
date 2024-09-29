--  Q1 What are The Most Preferd  Cuisines

--- QUery No 1 
SELECT Top 15  
    Preferd_cuisine ,COUNT(Consumer_ID) as 'Frequency'
FROM 
    [Rates].[Consumer_prefrences]
GROUP BY
     Preferd_cuisine 
ORDER BY 
    COUNT(Consumer_ID) DESC


