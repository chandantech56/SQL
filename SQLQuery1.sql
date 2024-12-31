CREATE DATABASE Students
USE Students
CREATE TABLE StudentsDetails( 
StudentId int,
studentName VARCHAR(100),
StudentCourse VARCHAR(100),
StudentCity VARCHAR(50)
);
SELECT*FROM StudentsDetails
INSERT INTO studentsDetails (StudentId, studentName,StudentCourse, StudentCity)
VALUES
(1, 'Abhishek', 'Python', 'hebbal'),
(2, 'vikas', 'java', 'Chennai'),
(3, 'Rishav', 'React', 'Marthali'),
(4, 'Ayush', 'Python', 'Hebbal'),
(5, 'Rahul', 'java', 'Electronic City'),
(6, 'sham', 'Deops', 'Electronic City'),
(7, 'Ajay', 'C++', 'Jpnagar');
SELECT*FROM StudentsDetails
--Add table
ALTER TABLE StudentsDetails
ADD
    EmailId VARCHAR(100),
    PlacementCompany VARCHAR(50)

UPDATE StudentsDetails
SET
     EmailId= 'abhishek45@gmail.com',
     PlacementCompany = 'google'
WHERE StudentId= 1;
SELECT*FROM StudentsDetails

UPDATE StudentsDetails
SET
     EmailId= 'vikas5@gmail.com',
     PlacementCompany = 'amazon'
WHERE StudentId= 2;
SELECT*FROM StudentsDetails

UPDATE StudentsDetails
SET
     EmailId= 'rishav55@gmail.com',
     PlacementCompany = 'microsoft'
WHERE StudentId= 3;
SELECT*FROM StudentsDetails
UPDATE StudentsDetails
SET
     EmailId= 'info@gmail.com',
     PlacementCompany = 'flipkart'
WHERE StudentId= 4;
SELECT*FROM StudentsDetails
--delete exiting table
ALTER TABLE StudentsDetails
DROP COLUMN LastName
