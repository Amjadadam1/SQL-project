
-- Consumers Demographics
SELECT 
    [State],City ,Marital_Status , COUNT(Consumer_ID) as 'Number of consumers'
FROM
     Rates.Consumers
GROUP BY
     City,[State] , Marital_Status 
HAVING 
    Marital_Status IS NOT NULL
ORDER BY 
    COUNT(Consumer_ID)




