--  Resturant Ratings Data Analysis project 


-- First creating The tables 

USE Projects 
GO
CREATE TABLE [Rates].Consumers
(
    Consumer_ID VARCHAR(50) PRIMARY KEY ,
    City VARCHAR(50) ,
    State VARCHAR(50) ,
    Country VARCHAR(50) ,
    Latitude VARCHAR(50) ,
    Longtude VARCHAR(50),
    Smoker VARCHAR(50),
    Drink_level VARCHAR(50) ,
    Transpositon_level VARCHAR(50) ,
    Marital_Status VARCHAR(50) ,
    Childeren VARCHAR(50) ,
    Age NUMERIC ,
    Occubatton VARCHAR(50) ,
    Budjet VARCHAR(50)
)


CREATE TABLE [Rates].Resturants 
(
    Resturant_ID VARCHAR(50) PRIMARY Key,
    Name VARCHAR(225) ,
    City VARCHAR(50) ,
    State VARCHAR(50) ,
    Country VARCHAR(50) , 
    ZIp_code VARCHAR(50) ,
    latitude VARCHAR(50) ,
    longitude VARCHAR(50) ,
    Alcahole_Service VARCHAR(50) ,
    Smoking_Allowed VARCHAR(50) ,
    Price Numeric ,
    Franchise VARCHAR(50) ,
    Area VARCHAR(50) ,
    Parking VARCHAR(50) 

)





CREATE TABLE [Rates].Resturant_Cuisine 
(
    --FOREIGN KEY (Resturant_ID) REFERENCES Rates.Resturants (Resturant_ID),
    Resturant_ID varchar(50) ,
    CONSTRAINT Resturant_ID_FK  FOREIGN KEY(Resturant_ID) REFERENCES Rates.Resturants(Resturant_ID),
    Cuisine VARCHAR(50)
)

CREATE TABLE [Rates].Consumer_prefrences
(
    --FOREIGN Key (Consumer_ID) REFERENCES Rates.Consumers(Consumer_ID),
    Consumer_ID varchar(50) ,
    CONSTRAINT Consumer_ID_FK FOREIGN KEY(Consumer_ID) REFERENCES Rates.Consumers(Consumer_ID),
    Preferd_cuisine VARCHAR(50)

)


CREATE TABLE  [Rates].Ratings 
(   Consumer_ID VARCHAR(50) ,
     CONSTRAINT Consumer_ID FOREIGN Key (Consumer_ID) REFERENCES Rates.Consumers(Consumer_ID), 
    
    Resturant_ID VARCHAR(50)  ,
    CONSTRAINT Resturant_ID
    FOREIGN KEY (Resturant_ID) REFERENCES Rates.Resturants(Resturant_ID),
    Overall_rating numeric,
    Food_rating numeric,
    Service_rating numeric
)  