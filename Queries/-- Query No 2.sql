--  Query No 2 
-- Q2 When  Do You Considre a resturant a high rated resturant 


SELECT 
    MAX(Overall_rating) as 'max rating',AVG(Overall_rating) as 'Avrage rating',MIN(Overall_rating) as 'min rating'
FROM
     Rates.Ratings

---Resturants are considerd High Rated When The Have 2 Rating

-- High Rated Resturants Data  
-- what are the resturants That Got The Perfect Score

SELECT Overall_rating , Food_rating ,Service_rating 
FROM 
    Rates.Ratings 
GROUP BY 
    Resturant_ID ,Overall_rating,
  Food_rating, Service_rating
HAVING
     Overall_rating >= 2 AND Overall_rating IS NOT NULL






--- Resturants Who Got The Perfect Score

---  Perfect Score Means That all Elements must have the Top Score 2 
SELECT Name,City,Overall_rating , Food_rating ,Service_rating 
FROM 
    Rates.Ratings as rating
Join 
    Rates.Resturants as rest 
on 
    rating.Resturant_ID =rest.Resturant_ID
GROUP BY 
    Name,City,rating.Resturant_ID ,Overall_rating,
    Food_rating, Service_rating
HAVING
     Overall_rating >= 2 AND Overall_rating IS NOT NULL 
     AND Food_rating>=2 AND Service_rating >= 2


     ---Perfect Score Resturants are 102 Resturant
