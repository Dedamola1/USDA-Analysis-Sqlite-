CREATE TABLE cheese_production (
    Year INTEGER,
    Period TEXT,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Domain TEXT,
    Value INTEGER
);

-- Import Data into Table Cheese_production

CREATE TABLE cheese_production_new (
	Year INTEGER,
    Period TEXT,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Domain TEXT,
    Value INTEGER
);

INSERT INTO cheese_production_new 
("Year","    Period","    Geo_Level","    State_ANSI","    Commodity_ID","    Domain","    Value")
SELECT *
FROM cheese_production;

UPDATE cheese_production_new  SET "    Value"  = REPLACE("    Value" , ',', '');

DROP TABLE cheese_production;

ALTER TABLE cheese_production_n RENAME TO cheese_production;



CREATE TABLE honey_production (
    Year INTEGER,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Value INTEGER
);

-- Import Data into Table honey_production

CREATE TABLE honey_production_new (
    Year INTEGER,
	Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Value INTEGER
);

INSERT INTO honey_production_new ("Year" , "Geo_level","State_ANSI","Commodity_ID" ,"Value")
SELECT *
FROM honey_production;

UPDATE honey_production_new SET Value = REPLACE(Value, ',', '');

DROP Table	honey_production;

ALTER TABLE honey_production_new RENAME TO honey_production;




CREATE TABLE milk_production (
    Year INTEGER,
    Period TEXT,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Domain TEXT,
    Value INTEGER
);

-- Import Data into Table milk_production

CREATE TABLE milk_production_NEW(
    Year INTEGER,
    Period TEXT,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Domain TEXT,
    Value INTEGER
);

INSERT INTO milk_production_NEW ("    Year" ,"    Period","    Geo_Level","    State_ANSI","    Commodity_ID","    Domain","    Value")
SELECT *
FROM milk_production ;

UPDATE milk_production_NEW SET Value = REPLACE(Value, ',', '');

DROP Table	milk_production ;

ALTER TABLE milk_production_NEW RENAME TO milk_production;




CREATE TABLE coffee_production (
    Year INTEGER,
    Period TEXT,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Value INTEGER
);

-- Import Data into Table coffee_production

CREATE TABLE coffee_production_NEW (
    Year INTEGER,
    Period TEXT,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Value INTEGER
);

INSERT INTO coffee_production_NEW  ("    Year" ,"    Period","    Geo_Level","    State_ANSI","    Commodity_ID","    Value")
SELECT *
FROM coffee_production;

UPDATE coffee_production_NEW  SET Value = REPLACE(Value, ',', '');

DROP Table	coffee_production;

ALTER TABLE coffee_production_NEW  RENAME TO coffee_production;




CREATE TABLE egg_production (
    Year INTEGER,
    Period TEXT,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Value INTEGER
);

-- Import Data into Table milk_production

CREATE TABLE egg_production_NEW (
    Year INTEGER,
    Period TEXT,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Value INTEGER
);

INSERT INTO egg_production_NEW  ("    Year" ,"    Period","    Geo_Level","    State_ANSI","    Commodity_ID","    Value")
SELECT *
FROM egg_production;

UPDATE egg_production_NEW  SET Value = REPLACE(Value, ',', '');

DROP Table	egg_production ;

ALTER TABLE egg_production_NEW  RENAME TO egg_production;




CREATE TABLE state_lookup (
    State TEXT,
    State_ANSI INTEGER
);


CREATE TABLE yogurt_production (
    Year INTEGER,
    Period TEXT,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Domain TEXT,
    Value INTEGER
);

-- Import Data into Table yogurt_production

CREATE TABLE yogurt_production_NEW (
    Year INTEGER,
    Period TEXT,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Domain TEXT,
    Value INTEGER
);

INSERT INTO yogurt_production_NEW  ("    Year" ,"    Period","    Geo_Level","    State_ANSI","    Commodity_ID","    Domain" ,"    Value")
SELECT *
FROM yogurt_production;

UPDATE yogurt_production_NEW  SET Value = REPLACE(Value, ',', '');

DROP Table yogurt_production ;

ALTER TABLE yogurt_production_NEW  RENAME TO yogurt_production;



