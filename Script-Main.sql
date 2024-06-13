-- Total production value by year for Milk, Coffee, Honey, Yogurt, Egg and Cheese
SELECT "Year" , SUM(Value) 
FROM milk_production mp 
GROUP BY "Year" 
;

SELECT "Year" , SUM(Value) 
FROM coffee_production cp 
GROUP BY "Year"
;

SELECT "Year" , SUM(Value) 
FROM honey_production hp 
GROUP BY "Year"
;

SELECT "Year", SUM(Value) 
FROM yogurt_production yp
GROUP BY "Year"
; 

SELECT "Year", SUM(Value) 
FROM egg_production ep 
GROUP BY "Year"
; 

SELECT "Year", SUM(Value) 
FROM cheese_production cp 
GROUP BY "Year"
; 

-- Total Milk Production for the year 2023
SELECT SUM(Value) AS Total_Milk_Production
FROM milk_production mp 
WHERE "Year" = 2023;

-- States that had cheese production greater than 100 million in April 2023
SELECT cp.State_ANSI, 
		sl.State,  
		Value 
FROM cheese_production cp
LEFT JOIN state_lookup sl 
			ON sl.State_ANSI = cp.State_ANSI 
WHERE "Year" = 2023
AND Period = 'APR'
AND Value > 100000000;

-- Total value of coffee production for 2011
SELECT Value 
FROM coffee_production cp 
WHERE "Year" = 2011;

-- Average honey production for 2022
SELECT AVG(Value) AS Average_Honey_Production 
FROM honey_production hp 
WHERE "Year" = 2022;

-- State_ANSI code for Florida
SELECT *
FROM state_lookup sl
WHERE State = 'FLORIDA';

-- States which produced Cheese in April 2023
SELECT "Year" ,
		Period , 
		sl.State ,
		Value 
FROM cheese_production cp 
LEFT JOIN state_lookup sl 
			ON sl.State_ANSI = cp.State_ANSI 
WHERE cp."Year" = 2023
AND Period = 'APR'
;

--Total yogurt production for states in the year 2022 that also have cheese production data from 2023
SELECT SUM(Value) AS Total_Yogurt_Production
FROM yogurt_production yp 
WHERE yp."Year" = 2022 
AND yp.State_ANSI IN (SELECT DISTINCT cp.State_ANSI 
						FROM cheese_production cp
						WHERE "Year" = 2023
);

-- States that are missing from Milk Production in 2023
SELECT COUNT(*) 
FROM state_lookup sl 
WHERE State_ANSI NOT IN (SELECT State_ANSI 
						FROM milk_production mp 
						WHERE "Year" =2023
);

-- Cheese production values and states in april 2023
SELECT "Year" , 
		Period, 
		sl.State, 
		cp.Value 
FROM cheese_production cp 
LEFT JOIN state_lookup sl 
			ON sl.State_ANSI = cp.State_ANSI 
WHERE "Year" = 2023
AND Period = 'APR'
;

-- Average coffee production for all years where the honey production exceeded 1 million
SELECT AVG(Value) AS Average_Coffee_Production 
FROM coffee_production cp 
WHERE "Year" IN (SELECT DISTINCT "Year" 
					FROM honey_production hp 
					WHERE Value > 1000000
);


