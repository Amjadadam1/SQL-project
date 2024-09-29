---Inserting Data into The Tables 


BULK INSERT Rates.Consumer_prefrences
FROM "C:\Users\AMJAD\Desktop\DATA ANALYSIS\Data\Restaurant_Ratings\consumer_preferences.csv"
WITH 
(
    FIELDTERMINATOR =',',
    ROWTERMINATOR ='\n',
    FIRSTROW =2
)


BULK INSERT Rates.Consumers
FROM "C:\Users\AMJAD\Desktop\DATA ANALYSIS\Data\Restaurant_Ratings\consumers.csv"
WITH 
(
    FIELDTERMINATOR =',',
    ROWTERMINATOR ='\n',
    FIRSTROW =2
)


BULK INSERT Rates.Ratings
FROM "C:\Users\AMJAD\Desktop\DATA ANALYSIS\Data\Restaurant_Ratings\ratings.csv"
WITH 
(
    FIELDTERMINATOR =',',
    ROWTERMINATOR ='\n',
    FIRSTROW =2
)


BULK INSERT Rates.Resturant_Cuisine 
FROM "C:\Users\AMJAD\Desktop\DATA ANALYSIS\Data\Restaurant_Ratings\restaurant_cuisines.csv"
WITH 
(
    FIELDTERMINATOR =',',
    ROWTERMINATOR ='\n',
    FIRSTROW =2
)


BULK INSERT Rates.Resturants
FROM "C:\Users\AMJAD\Desktop\DATA ANALYSIS\Data\Restaurant_Ratings\restaurants.csv"
WITH 
(
    FIELDTERMINATOR =',',
    ROWTERMINATOR ='\n',
    FIRSTROW =2
)
