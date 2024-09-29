/*
     Markrt supply and Demand grasps 
    To spot it we most do some data exploration first  
    On the first look we will put The Consumers data Against the resturants data
    Drink vs alcahole service
    Transpostino method vs parking ..etc
*/


 
-- first tansposiion method vs parking 

SELECT
     Parking ,count(Resturant_ID) 'Count of Resturants'
FROM 
    Rates.Resturants
GROUP BY 
    Parking 
ORDER BY 
    COUNT(Resturant_ID) desc 
    -- The findings are 65 resturants dosent have parking
    -- 45 resturants have parking

SELECT 
    Transpositon_level ,COUNT(Consumer_ID) as 'count of consumers'
FROM 
    Rates.Consumers
GROUP BY 
    Transpositon_level 
ORDER BY 
    COUNT(Consumer_ID) desc

-- the most transpositon level is puplic
-- the supply and demand for parking space is Balanced


--Second   Drink vs alcahole service

SELECT 
    Alcahole_Service , COUNT(Resturant_ID)as 'count of resturants'
FROM 
    Rates.Resturants
GROUP BY
    Alcahole_Service 


SELECT 
    Drink_level ,COUNT(Consumer_ID) as 'count of consumers'
From 
    Rates.Consumers
GROUP BY 
    Drink_level
-- The most number of customers are Abstemious drinkers 
