-- Create the database
CREATE DATABASE cricket;

-- Switch to the 'cricket' database
USE cricket;

-- Create the table
CREATE TABLE new_tables (
    YEAR INT,
    Winner_team VARCHAR(100)
);

-- Select from the table (will return empty initially)
SELECT * FROM new_tables;

-- Insert data into the table
INSERT INTO new_tables (YEAR, Winner_team)
VALUES
    (2008, 'Rajasthan'),
    (2009, 'Deccan Chargers'),
    (2010, 'Chennai Super Kings'),
    (2011, 'Kolkata Knight Riders'),
    (2013, 'Mumbai Indians'),
    (2014, 'Kolkata Riders');

-- Display data in the table
SELECT * FROM new_tables;

-- Alter the table to add new columns
ALTER TABLE new_tables
ADD
    Runner_up VARCHAR(100),
    Final_Match_venue VARCHAR(100),
    Captain VARCHAR(100),
    Player_of_the_series VARCHAR(100),
    Man_of_the_match VARCHAR(100);

-- Update the table
UPDATE new_tables
SET 
    Runner_up = 'Chennai Super Kings',
    Final_Match_venue = 'Mumbai',
    Captain = 'MS Dhoni',
    Player_of_the_series = 'Sachin Tendulkar',
    Man_of_the_match = 'Rohit Sharma'
WHERE YEAR = 2010; -- Specify a condition to update the correct row

-- Update the table
UPDATE new_tables
SET 
    Runner_up = 'Rajasthan',
    Final_Match_venue = 'Delhi',
    Captain = 'Raina',
    Player_of_the_series = 'kumblai',
    Man_of_the_match = 'sardu'
WHERE YEAR = 2008; 

-- Update the table
UPDATE new_tables
SET 
    Runner_up = 'mumbai',
    Final_Match_venue = 'Mumbai',
    Captain = 'MS Dhoni',
    Player_of_the_series = 'Sachin Tendulkar',
    Man_of_the_match = 'Rohit Sharma'
WHERE YEAR = 2013; 

-- Update the table
UPDATE new_tables
SET 
    Runner_up = 'Kolkata night',
    Final_Match_venue = 'Gujrat',
    Captain = 'Nehra',
    Player_of_the_series = 'Hook',
    Man_of_the_match = 'Piterson'
WHERE YEAR = 2011; 

-- Display the updated table
SELECT * FROM new_tables;

UPDATE new_tables
SET 
    Runner_up = 'Deccan chargers',
    Final_Match_venue = 'Bangalore',
    Captain = 'Nehra',
    Player_of_the_series = 'Hook',
    Man_of_the_match = 'Piterson'
WHERE YEAR = 2009; 

-- Display the updated table
SELECT * FROM new_tables;
Update new_tables
Set Runner_Up = 'Gujarat Titans',
Final_Match_Venue = 'Ahmedabad',
Captain = 'MS Dhoni',
Player_of_the_Series = 'Shubman Gill',
Man_of_the_Match = 'Devon Conway'
Where YEAR = 2014
SELECT * FROM new_tables;
--Deleting the Column from the table (Drop)
Alter Table new_tables
Drop Column YEAR
Select * from new_tables

--Deleting the Row from the table (Delete)
Delete from new_tables
Where Winner_team = 'Chennai Super Kings'
Select * from new_tables

-- Deleting the entire table
Truncate table new_tables
Select * from new_tables
