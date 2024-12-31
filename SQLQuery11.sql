CREATE DATABASE ipl;
USE ipl
CREATE TABLE ipl_information(
Years INT, 
Winners_Team VARCHAR(100),
);
SELECT*FROM ipl_information
INSERT INTO ipl_information
VALUES
    (2008, 'Rajasthan'),
    (2009, 'Deccan Chargers'),
    (2010, 'Chennai Super Kings'),
    (2011, 'Kolkata Knight Riders'),
    (2013, 'Mumbai Indians'),
    (2014, 'Kolkata Riders'),
	(2015, 'chennai super king')
	SELECT*FROM ipl_information

ALTER TABLE ipl_information
ADD 
	Runner_up VARCHAR(100),
	Final_match_venue VARCHAR(100),
	Captain VARCHAR(90)
	SELECT*FROM ipl_information

UPDATE ipl_information
SET 
	Runner_up ='Rohit',
	Final_match_venue = 'bangalore',
	Captain = 'Dhoni'
	WHERE YEAR = 2010;
	SELECT*FROM ipl_information
ALTER TABLE ipl_information
DROP COLUMN Years
SELECT*FROM ipl_information

DELETE FROM ipl_information
WHERE FROM Winners_Team = 'deccan chargers'
SELECT*FROM ipl_information
