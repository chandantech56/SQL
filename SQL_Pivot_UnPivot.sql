Create Database SQL_Pivot_UnPivot
Use SQL_Pivot_UnPivot

CREATE TABLE Grades(
  Student VARCHAR(50),
  Subjects VARCHAR(50),
  Marks INT)
 
INSERT INTO Grades
VALUES 
('Jacob','Mathematics',100),
('Jacob','Science',95),
('Jacob','Geography',90),
('Amilee','Mathematics',90),
('Amilee','Science',90),
('Amilee','Geography',100)

Select * from Grades
select * from(
    select Student,Subjects, Marks
	from Grades
)   studentResults

pivot(
 sum(Marks)
 for Subjects in (Mathematics,Science,Geography)
) As pivotTable
select * from Grades
----------------------------------------------

CREATE TABLE Student(
StudentID int,
Marks1 float,
Marks2 float,
Marks3 float)

INSERT INTO Student
VALUES
(1, 5.6, 7.3, 4.2),
(2, 4.8, 7.9, 6.5),
(3, 6.8, 6.6, 8.9),
(4, 8.2, 9.3, 9.1),
(5, 6.2, 5.4, 4.4)
select * from student

select studentID, MarksNo, marksRecd
from
(select StudentID, marks1, Marks2, Marks3
from student) stu
Unpivot
(marksrecd for marksno in ( marks1, Marks2, Marks3)
)as unpivotetable



