CREATE TABLE Student_table(
    StudentID INT PRIMARY key not NULL,
    StudentName VARCHAR(50) not NULL,
    Age INT NOT NULL 
);

CREATE TABLE Professor_Table(
	ProfessorID INT PRIMARY KEY NOT NULL,
	Professor_name VARCHAR (15) NOT NULL,
	Professor_qualification VARCHAR (50) NOT NULL
);

 CREATE TABLE course_Table(
    CoursesID INT PRIMARY KEY NOT NULL,
    CourseName VARCHAR(40) NOT NULL,
    DeptID INT NOT NULL 
 );



INSERT INTO course_Table VALUES
(1, 'Real analysis', 01),
(2, 'Computer as a problem solving tool', 02),
(3, 'Numerical Analysis', 03),
(4, 'Maths Method', 04),
(6, 'Mechanics', 05),
(7, 'Abstract Algebrae', 06),
(9, 'Statistical Methods', 07);


INSERT INTO Professor_table VALUES
(1, 'Dr Mbaka', 'PHD Data Science'),
(3, 'Dr George', 'PHD Mathimatics'),
(5, 'Dr Mogbademu', 'PHD Business Technology'),
(6, 'Dr Hallowed', 'PHD Statistics'),
(8, 'Dr Ayoade', 'PHD Medical Science'),
(10, 'Dr System', 'PHD Chemistry');


INSERT into Student_table values
(1, 'datasam', 19),
(2,'esther', 39),
(3, 'fred', 25),
(4, 'david', 26),
(7, 'victoria', 24),
(8, 'mubarak', 29),
(9, 'seunfunmi', 23),
(10,'dolapo', 32);

SELECT * FROM Student_table
select * from Professor_Table
select * from course_Table



------------------------ CLASS WORK ------------
-- Join the Professor and the student table such that no null value is returned
SELECT * FROM Professor_Table  INNER JOIN Student_table ON Professor_TablE.ProfessorID = Student_table.StudentID

-- Join the student and course table such that only the course table carries null values 
SELECT * FROM Student_table LEFT JOIN course_Table ON Student_table.StudentID = course_Table.CoursesID


-- Join the course and professor such that only professor table carries null value
SELECT * FROM Student_table LEFT JOIN Professor_Table ON Student_table.StudentID = Professor_Table.ProfessorID


-- Join the course and student table such that none of the tables have a null value
SELECT * FROM course_Table INNER JOIN Student_table ON course_Table.DeptID = Student_table.StudentID

-- Join the professor and course table such that only course table has null values 
SELECT * from Professor_Table LEFT JOIN course_Table ON course_Table.CoursesID = Professor_Table.ProfessorID

-- Join all the tables together regardless of null values
SELECT * FROM Professor_Table
FULL OUTER JOIN course_Table ON course_Table.CoursesID = Professor_Table.ProfessorID
FULL OUTER JOIN Student_table ON Student_table.StudentID = Professor_Table.ProfessorID


--Join all professor and all course table regardless of null in them
SELECT * FROM Professor_Table
FULL OUTER JOIN course_Table ON Professor_Table.ProfessorID = course_Table.CoursesID

--Join the 3 columns such that none of then has a null value
SELECT * FROM Professor_Table
INNER JOIN course_Table ON course_Table.CoursesID = Professor_Table.ProfessorID
INNER JOIN Student_table ON Student_table.StudentID = Professor_Table.ProfessorID

