--- Q3 In The high rated Resturants What are the Elements that Affected The Ratings

--- We will use the high rated Resturants data  

SELECT 
    Smoking_Allowed,Area,Alcahole_Service,Price,
    Overall_rating , Food_rating ,Service_rating 
FROM 
    Rates.Ratings as rating
RIGHT JOIN 
    Rates.Resturants as rest 
on  rating.Resturant_ID =rest.Resturant_ID
GROUP BY 
    rating.Resturant_ID ,Overall_rating,Price,
    Food_rating, Service_rating,Smoking_Allowed,Area,Alcahole_Service
HAVING
     Overall_rating >= 2 AND Overall_rating IS NOT NULL

     /* 
         High Rated Resturants Properites :
         
        1 Dosent Allow Smoking But Some have smoking Areas
        2 More than 80% Of high rated resturants are closed areas resturants
        3 Alcahole Service : most High Rated resturants Dosent Have alcahole service and some have Wine an Beer
        4 Price : 60 % Of High rate resturants prices Are Medium  
     */