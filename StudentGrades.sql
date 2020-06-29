USE CMS
GO

--Table1
CREATE TABLE Semesters
(
	ID INT PRIMARY KEY IDENTITY,
	Name VARCHAR(50),
	Year INT,
	Part INT
)

--Table2
CREATE TABLE Class
(
	ID INT PRIMARY KEY IDENTITY,
	Name VARCHAR(50)
)

--Table3
CREATE TABLE Majors
(
	ID INT PRIMARY KEY IDENTITY,
	Name VARCHAR(50)
)

--Table4
CREATE TABLE Subjects
(
	ID INT PRIMARY KEY IDENTITY,
	MajorID INT,
	Name VARCHAR(50),
	CONSTRAINT FK_Subject_Major
	FOREIGN KEY (MajorID)
	REFERENCES Majors(ID)
)

--Table5
CREATE TABLE Teacher
(
	ID INT PRIMARY KEY IDENTITY,
	FullName VARCHAR(50),
	DateOfbirth DATE,
	Gender CHAR CHECK(Gender = 'F' OR Gender = 'M')
)

--Table6
CREATE TABLE Courses
(
	ID INT PRIMARY KEY IDENTITY,
	SemesterID INT,
	ClassID INT,
	SubjectID INT,
	TeacherID INT,
	CONSTRAINT FK_Semester_Course
	FOREIGN KEY (SemesterID)
	REFERENCES dbo.Semesters(ID),
	CONSTRAINT FK_Class_Course
	FOREIGN KEY (ClassID)
	REFERENCES dbo.Class(ID),
	CONSTRAINT FK_Subject_Course
	FOREIGN KEY (SubjectID)
	REFERENCES dbo.Subjects(ID),
	CONSTRAINT FK_Teacher_Course
	FOREIGN KEY (SubjectID)
	REFERENCES dbo.Teacher (ID)
)

--Table7
CREATE TABLE Students
(
	ID INT PRIMARY KEY IDENTITY,
	FirstName VARCHAR(50),
	MiddleName VARCHAR(50),
	LastName VARCHAR(50),
	DateOfbirth DATE,
	Gender CHAR CHECK(Gender = 'F' OR Gender = 'M')
)

--Table8
CREATE TABLE CourseStudent
(
	ID INT PRIMARY KEY IDENTITY,
	StudentID INT ,
	CourseID INT,
	CONSTRAINT FK_CourseStudent_Course
	FOREIGN KEY (CourseID)
	REFERENCES dbo.Courses(ID),
	CONSTRAINT FK_CourseStudent_Student
	FOREIGN KEY (StudentID)
	REFERENCES dbo.Students(ID)
)

--Table9
CREATE TABLE Grades
(
	ID INT PRIMARY KEY IDENTITY,
	CourseStudentID INT,
	GradeItem VARCHAR(50),
	Grade FLOAT,
	Feedback VARCHAR(50),
	CONSTRAINT FK_CourseStudent_Grade
	FOREIGN KEY (CourseStudentID)
	REFERENCES dbo.CourseStudent(ID)
)

--Đổ dữ liệu :))


--Tb1
INSERT INTO dbo.Semesters
(
    Name,[Year],Part
)
VALUES
('Spring',2017,1),('Spring',2017,2),('Fall',2017,1),('Fall',2017,2),('Summer', 2017,1),('Summer', 2017, 2),
('Spring',2018,1),('Spring',2018,2),('Fall',2018,1),('Fall',2018,2),('Summer', 2018,1),('Summer', 2018, 2),
('Spring',2019,1),('Spring',2019,2),('Fall',2019,1),('Fall',2019,2),('Summer', 2019,1),('Summer', 2019, 2),
('Spring',2020,1),('Spring',2020,2),('Fall',2020,1),('Fall',2020,2),('Summer', 2020,1),('Summer', 2020, 2)

--Tb2
INSERT INTO dbo.Class
(
    Name
)
VALUES
( 'GED1945' ),( 'GED1946' ),( 'GED1947' ),( 'GED1948' ),( 'GCD0803' ),( 'GCD0805' ),( 'GCD0702' ),
( 'GCD0705' ),( 'GCD0826' ),( 'GCD0821' ),( 'GCD0820 ),( 'GCD0815' ),( 'GCD0814' ),( 'GBD' ),
( 'GBD0605' ),( 'GCD0602' ),( 'GCD0601' ),( 'GCD0603 ),( 'GCD0715' ),( 'GCD0714' ),( 'GCD1947' )